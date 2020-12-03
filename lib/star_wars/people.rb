class People

    attr_accessor :name, :height, :eye_color, :gender

    @@all = []

    def initialize(people_data)
        @name = people_data["name"]
        @height = people_data["height"]
        @eye_color = people_data["eyes"]
        @gender = people_data["eye color"]
    end



    def save
        self.class.all << self
    end


    def self.all
        @@all
    end

    def pretty_print
        puts @name
        print "Height:---"
        puts @height
        print "Eye color:---"
        puts @eye_color
        print "Gender:---"
        puts @gender
    
    end

end
