require 'spec_helper'
module Guard
  class Jessie 
    describe Runner do

      describe ".run" do

        it "Returns false when called with empty list of paths" do
          subject.run([]).should be_false
        end

        it "Runs jessie with each path when passed list with many paths" do
          multiple_paths = %w[
            /spec ./spec/something.js ../spec/something_else.js other_thing.js
          ]
          subject.should_receive(:system).with(
            /.* -f progress #{multiple_paths.join(' ')}/
          )
          subject.run(multiple_paths)
        end

      end

    end
  end
end
