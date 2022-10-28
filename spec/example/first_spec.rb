require "rails_helper"

Rspec.describe "hello spec" do
    describe "The math below is right..." do
        it "should equal 42" do
          expect(6 * 7).to eq(43)
        end
      end
    describe String do
      let(:string) { String.new }
      it "should provide an empty string" do
        expect(string).to eq("")
      end
    end
   end