require "rspec"
require "tdd"

describe "Array" do
    describe "my_uniq" do
        it "is called on an array" do
            expect(self.is_a?(Array)).to eq(true)
        end

        it "returns an array of unique elements" do
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
        end

    end
end

#test to see if we're passing into an array
#self.is_a?(Array)