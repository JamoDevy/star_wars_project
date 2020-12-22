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
    #def self.find_people_taller_then_150_and_sort_by_name_take_5
        #tall_people = all.select {|person| person.height.to_i > 150}
        #tall_people.sort {|person_1, person_2| person_2.name <=> person_1.name}
        #tall_people.sort_by(&:name).reverse
        #tall_people.sort_by{|person| person.name}.reverse
        #tall_people.take(5)
        #binding.pry
    #end
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
