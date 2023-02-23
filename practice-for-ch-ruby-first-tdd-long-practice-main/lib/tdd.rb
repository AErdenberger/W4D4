class Array

    def my_uniq
        result = []
        self.each {|ele| result << ele if !result.include?(ele)}
        result
    end
    
end