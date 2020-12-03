class Planet

    attr_accessor :name, :terrain, :climate, :population

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
    end

    def self.all
        @@all
    end

    def people
        People.all.select{|person| person.planet == self}
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