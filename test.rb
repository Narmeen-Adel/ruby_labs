

$global_var=10
#global_var.freeze      #make var cant be modified >>>> this method  work on array not variable  
class Class1

    def print_global
        puts "global var is #{$global_var}"
    end

end

obj =Class1.new 
obj.print_global

################################################################
# class Customer 

#     def initialize(id ,name, address)
#         @id =id
#         @name =name 
#         @address =address
#     end
#     attr_reader :id, :name, :address
#     attr_writer :id, :name, :address
#     attr_accessor :id, :name, :address
#     def id
#         @id          # by default  function return last line  or wite return 
#     end
#     def name
#         @name
#     end
#     def address
#         @address
#     end

#     def id=(id)
#         @id =id
#     end
#     def id(name)
#         @name =name
#     end
#     def id(address)
#         @address =address
#     end



# end
# customer1  =Customer.new(2,"kkkk","alex")
# puts customer1.id=5            

###################################