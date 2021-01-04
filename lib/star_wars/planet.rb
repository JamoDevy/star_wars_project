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

    def self.find_by_name(name)
        all.detect {|planet| planet.name.downcase == name.downcase}
           
    end


    def display_data
        table = TTY::Table.new(header: ["Name", "Terrain", "Climate", "Population"])
        table << ["#{self.name}".yellow, "#{self.terrain}".yellow, "#{self.climate}".yellow, "#{self.population}".yellow]
        puts table.render(:unicode)
    end

end