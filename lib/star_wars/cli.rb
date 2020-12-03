class CLI

    def start
        @user_input = nil
        @api = API.new
        welcome
        until @user_input == "5"
            main_menu
        end
        puts "---May the force be with you.---".colorize(:blue)
    end

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
        puts "4. Exit"

        @user_input = gets.chomp

        if @user_input == "1"
            search_for_people
        elsif @user_input == "2"
            search_for_planet
        elsif @user_input == "3"
            search_for_starship
        elsif @user_input == "4"
        
        else 
            puts "Invalid input".colorize(:red)
        end
   
    end

    def search_for_people
        print "Who would you like to look up? ".colorize(:green)
        input = gets.chomp
        people = @api.fetch_people_by_name(input)
        binding.pry
    end

end