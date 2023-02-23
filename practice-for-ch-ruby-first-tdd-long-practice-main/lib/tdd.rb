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
    
end