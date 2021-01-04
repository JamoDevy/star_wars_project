class People

    attr_accessor :name, :height, :eye_color, :gender 

    @@all = []

    def initialize(people_data)
        self.name = people_data["name"]
        self.height = people_data["height"]
        self.eye_color = people_data["eye_color"]
        self.gender = people_data["gender"]
         
        save
    end

    def self.find_by_name(name)
        all.detect {|person| person.name.downcase == name.downcase}
           
    end

    def self.all_sort_by_name
        all.map {|person| person.name}
        
    end
    
    def save
        self.class.all << self
    end


    def self.all
        @@all
    end


    def display_data
        table = TTY::Table.new(header: ["Name", "Height", "Eye Color", "Gender"])
        table << ["#{self.name}".yellow, "#{self.height}".yellow, "#{self.eye_color}".yellow, "#{self.gender}".yellow]
        puts table.render(:unicode)
    end

end
