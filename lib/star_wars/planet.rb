class Planet

    attr_accessor :name, :terrain, :climate, :population

    @@all = []

    def initialize(planet_data)
        self.name = planet_data["name"]
        self.terrain = planet_data["terrain"]
        self.climate = planet_data["climate"]
        self.population = planet_data["population"]
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    #def people
        #People.all.select{|person| person.planet == self}
    #end

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

    def display_data
        table = TTY::Table.new(header: ["Name", "Terrain", "Climate", "Population"])
        table << ["#{self.name}".yellow, "#{self.terrain}".yellow, "#{self.climate}".yellow, "#{self.population}".yellow]
        puts table.render(:unicode)
    end

end