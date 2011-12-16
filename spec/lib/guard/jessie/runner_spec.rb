require 'spec_helper'
module Guard
  class Jessie 
    describe Runner do
      let(:multiple_paths) { %w[/spec ./spec/something.js ../spec/something_else.js other_thing.js]}
      context "when passed an empty paths list" do
        it "returns false" do
          subject.run([]).should be_false
        end
      end

      context "when passed multiple paths" do
        it "runs jessie with those paths" do
          subject.should_receive(:system).with(
            "jessie -f progress /spec ./spec/something.js ../spec/something_else.js other_thing.js"
          )
          subject.run(multiple_paths)
        end
      end

    end
  end
end
