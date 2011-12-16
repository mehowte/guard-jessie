require 'spec_helper'

def stub_local_jessie_existence_test
  FileTest.stub(:exists?).with('./node_modules/jessie/bin/jessie')
end

module Guard
  class Jessie 

    describe Runner do

      context "Local jessie installation exist" do
        before(:each) { stub_local_jessie_existence_test.and_return(true) }

        it "Uses local Jessie" do
          Runner.should_receive(:system).with(
            /^\.\/node_modules\/jessie\/bin\/jessie .*$/
          )
          Runner.run %w[spec]
        end
      end

      context "No local jessie installation" do
        before(:each) { stub_local_jessie_existence_test.and_return(false) }

        it "Uses global Jessie" do
          Runner.should_receive(:system).with(/^jessie .*$/)
          Runner.run %w[spec]
        end
      end

    end
  end
end
