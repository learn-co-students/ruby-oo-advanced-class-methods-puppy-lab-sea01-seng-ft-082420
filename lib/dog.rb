class Dog
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    #returns all dog instances
    def self.all
        @@all
    end

    #empties the @@all array of all existing dogs
    def self.clear_all
        self.all.clear
    end

    #puts out the name of each dog to the terminal
    def self.print_all
        self.all.each do |dogs|
            puts dogs.name
        end
    end

    #adds this dog instance to the @@all array when called
    #gets called inside initialize when a new Dog is created
    def save
        @@all << self
    end
end