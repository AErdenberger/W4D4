class Array

    def my_uniq
        result = []
        self.each {|ele| result << ele if !result.include?(ele)}
        result
    end

    def two_sum
        res = []
        self.each_with_index do |el, i|
            self.each_with_index do |el_2, j|
                res << [i, j] if el + el_2 == 0 && i < j
            end
        end
        res 
    end
    
    def my_transpose
        h = self.length
        res = Array.new(h){Array.new(h)}

        (0...h).each do |idx|
            (0...h).each do |jdx|
                res[idx][jdx] = self[jdx][idx]
            end
        end

        res
    end
end
