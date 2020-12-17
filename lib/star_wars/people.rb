class People

    attr_accessor :name, :height, :eye_color, :gender #, :planet, :starship

    @@all = []

    def initialize(people_data)
        self.name = people_data["name"]
        self.height = people_data["height"]
        self.eye_color = people_data["eye_color"]
        self.gender = people_data["gender"]
        #self.planet = people_data["planet"]
        #binding.pry 
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
        print "Height:---"
        puts @height
        print "Eye color:---"
        puts @eye_color
        print "Gender:---"
        puts @gender
    
    end

    def display_data
        table = TTY::Table.new(header: ["Name", "Height", "Eye Color", "Gender"])
        table << ["#{self.name}".yellow, "#{self.height}".yellow, "#{self.eye_color}".yellow, "#{self.gender}".yellow]
        puts table.render(:unicode)
    end

end
