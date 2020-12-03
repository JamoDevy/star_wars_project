class CLI

    def welcome
        puts
        puts "---Welcome to a galaxy far far away!---".colorize(:blue)
        puts
    end

    def main_menu
        puts "What would you like to search for?".colorize(:green)
        puts "1. Search for People" 
        puts "2. Search for Planets"
        puts "3. Search for Starships"
    end

end




end