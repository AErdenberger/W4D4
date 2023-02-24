#[150, 45, 78, 540, 720]

def stock_picker(array)
  #hash = Hash.new { |hash, k| hash[k] = [] }
  hash = Hash.new
  array.each_with_index do |day_1, i|
    array.each_with_index do |day_2, j|
      hash[(day_2 - day_1)] = [i, j] if i < j
    end
  end
  max_profit = hash.keys.max
  hash[max_profit]
end