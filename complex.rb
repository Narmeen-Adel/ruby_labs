class ComplexNum
    attr_accessor :real, :imagin
 
    @@state ={:count_addition => 0,
              :count_multiply => 0
             }
   
    def initialize(real=0, imagin=0)
        @real = real
        @imagin = imagin 
    end 

    def +(comp)
        result =ComplexNum.new(0,0)
        result.real = @real + comp.real
        result.imagin = @imagin +comp.imagin
        @@state[:count_addition] +=1
        return result

    end

    def *(comp)
        result =ComplexNum.new(0,0)
        result.real = @real * comp.real  - @imagin * comp.imagin
        result.imagin = @real * comp.imagin + @imagin * comp.real
        @@state[:count_multiply] +=1
        return result
    end
    def  self.print_state
        puts " addition = #{@@state[:count_addition] }"
        puts " multiply = #{@@state[:count_multiply] }"
    end 

    def print_complex()
        puts     "#{@real} + #{@imagin}i"
    end

    def self.bulk_add( arrr )
        
        result =ComplexNum.new(0,0)
        
        arrr.each do|num|
            puts("oooo")
            result  = result + num
        end
        return result

    end

    def self.bulk_multiply( arrr )
        
        result =ComplexNum.new(1,0)
        
        arrr.each do|num|
            result  = result * num
        end
        return result

    end

end

comp1 = ComplexNum.new(3,2)
comp2 = ComplexNum.new(1,7)


ree = comp1 * (comp2)

arr =[ComplexNum.new(3,2),ComplexNum.new(1,7)]
puts ree.print_complex
re=ComplexNum.bulk_multiply(arr)
puts re.print_complex
puts ComplexNum.print_state