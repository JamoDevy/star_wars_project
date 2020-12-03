class Planet

    attr_reader :name, :terrain, :climate, :population

    @@all = []

    def initialize(planet_data)
        @name = planet_data["name"]
        @terrain = planet_data["terrain"]
        @climate = planet_data["climate"]
        @population = planet_data["population"]
        save
    end

    def save
        self.class.all << self

    def self.all
        @@all
    end

end