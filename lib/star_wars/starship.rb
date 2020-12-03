class Starship

    attr_reader :name, :manufacturer, :cost_in_credits, :passengers

    @@all =[]

    def initialize(starship_data)
        @name = starship_data["name"]
        @manufacturer = starship_data["manufacturer"]
        @cost_in_credits = starship_data["cost_in_credits"]
        @passengers = starship_data["passengers"]
        save
    end

    def save
        self.class.all << self
    end

    def self.all 
        @@all
    end
end