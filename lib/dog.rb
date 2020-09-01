# Add your code here
class Dog
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(name)
        @name=name
        save
    end



    def self.clear_all
        @@all=[]
    end

    def self.print_all
        @@all.each do |key|
            puts "#{key.name}"
        end
    end




end




# Dog
#   .new
#     initializes with one argument - a name (FAILED - 1)
#   class variables
#     @@all
#       has a class variable, @@all, the points to an array (FAILED - 2)
#   class methods
#     .all
#       is a class method returns all dog instances (FAILED - 3)
#     .clear_all
#       is a class method that empties the @@all array of all existing dogs (FAILED - 4)
#     .print_all
#       is a class method that puts out the name of each dog to the terminal (FAILED - 5)
#   #save
#     adds this dog instance to the @@all array when called (FAILED - 6)
#     gets called inside initialize when a new Dog is created (FAILED - 7)
#   #name
#     has a name (FAILED - 8)