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

        #it this tests that the pair_1 adds up to 0
        context "finds all pairs of positions where the elements at those positions sum to zero." do
            it "indices in this pair, map to elements in original array add to 0" do 
                el_1 = sum_test.two_sum[0][0]
                el_2 = sum_test.two_sum[0][1]
                expect(sum_test[el_1] + sum_test[el_2] == 0).to eq(true)
            end
        end
        
        #this tests that pair_1 is ordered correctly
        context "Each of the pairs should be sorted with the smaller index before the bigger index" do
            it "first pair of :sum_test is ordered correctly" do
                el_1 = sum_test.two_sum[0][0]
                el_2 = sum_test.two_sum[0][1]
                expect(el_1 < el_2).to eq(true)
            end
        end

        #if the result array is ordered correctly
        context "" do
            it "" do
                pair_1 = sum_test.two_sum[0]
                pair_2 = sum_test.two_sum[1]
                expect(pair_1[0] < pair_2[0]).to eq(true)
            end
        end
    end
end
