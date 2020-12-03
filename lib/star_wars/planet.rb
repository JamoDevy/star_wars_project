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

    def pretty_print
        puts
        puts @name
        puts
        print "Terrain:--- "
        puts @terrain
        print "Climate:--- "
        puts @climate
        print "Population:--- "
        puts @population
    end

end