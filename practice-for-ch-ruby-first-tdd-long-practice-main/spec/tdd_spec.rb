require "rspec"
require "tdd"

describe "Array" do
    describe "my_uniq" do
        subject(:arr_test) {[1, 2, 1, 3, 3]}
        it "is called on an array" do
            expect(arr_test.is_a?(Array)).to eq(true)
        end

        it "returns an array of unique elements" do
            expect(arr_test.my_uniq).to eq([1, 2, 3])
        end

    end

    describe "two_sum" do 
        subject(:sum_test) {[-1, 0, 2, -2, 1]}
        it "returns a 2-D array" do 
            expect(sum_test.two_sum[0].is_a?(Array)).to eq(true)
        end

        it "indices in resulting subarrays, map to elements in original array add to 0" do 
            el_1 = sum_test.two_sum[0][0]
            el_2 = sum_test.two_sum[0][1]
            expect(sum_test[el_1] + sum_test[el_2] == 0).to eq(true)
        end
        #Array.new(2) {Array.new(2)}
    end
end
