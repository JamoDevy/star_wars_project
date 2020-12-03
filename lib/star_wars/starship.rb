class Starship

    attr_accessor :name, :manufacturer, :cost_in_credits, :passengers

    @@all =[]

    def initialize(starship_data)
        self.name = starship_data["name"]
        self.manufacturer = starship_data["manufacturer"]
        self.cost_in_credits = starship_data["cost_in_credits"]
        self.passengers = starship_data["passengers"]
        save
    end

    def save
        self.class.all << self
    end

    def self.all 
        @@all
    end

    def pretty_print
        puts
        puts @name
        puts
        print "Manufacturer:--- "
        puts @manufacturer
        print "Cost in credits:--- "
        puts @cost_in_credits
        print "Passengers:--- "
        puts @passengers
    end
end