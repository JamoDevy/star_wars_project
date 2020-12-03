class People

    attr_accessor :name, :height, :eye_color, :gender

    @@all = []

    def initialize(people_data)
        @name = people_data["name"]
        @height = people_data["height"]
        @eye_color = people_data["eyes"]
        @gender = people_data["eye color"]



    def save
        self.class.all << self
    end


    def self.all
        @@all
    end

end
