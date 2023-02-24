require "rspec"
require "stock_picker"

describe "stock_picker" do
  subject(:stocks){[150, 45, 78, 540, 720]}
    context "outputs the most profitable pair of days on which to first buy the stock and
    then sell the stock" do
      it "it returns a pair of indices" do
        expect(stock_picker(stocks).length).to eq(2)
      end
      it "the first element of the pair should be less than the second" do
        el_1 = stock_picker(stocks)[0]
        el_2 = stock_picker(stocks)[1]
        expect(el_1 < el_2).to eq(true)
      end
      it "return the most profitable days" do
        el_1 = stock_picker(stocks)[0]
        el_2 = stock_picker(stocks)[1]
        expect(stocks[el_2] - stocks[el_1]).to eq(675)
      end
    end
end