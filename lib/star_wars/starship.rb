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

    def self.find_by_name(name)
        all.detect {|starship| starship.name.downcase == name.downcase}
           
    end

    def display_data
        table = TTY::Table.new(header: ["Name", "Terrain", "Climate", "Population"])
        table << ["#{self.name}".yellow, "#{self.manufacturer}".yellow, "#{self.cost_in_credits}".yellow, "#{self.passengers}".yellow]
        puts table.render(:unicode)
    end


end