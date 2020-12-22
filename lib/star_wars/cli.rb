class CLI

    attr_accessor :user_input
    attr_reader :api 

    def start
        @user_input = nil
        @api = API.new
        welcome

        until user_input == "4"
            main_menu
        end 

        #puts "---May the force be with you.---".colorize(:blue)
        #puts 
    end

    def welcome
        puts
        puts "---Welcome to a galaxy far far away!---".colorize(:blue)
        puts
    end

    def main_menu
        puts "What would you like to search for?".colorize(:green)
        puts
        puts "1. Search for People" 
        puts "2. Search for Planets"
        puts "3. Search for Starships"
        puts "4. Exit"

        user_input = gets.chomp

        if user_input == "1"
            search_for_people
        elsif user_input == "2"
            search_for_planet
        elsif user_input == "3"
            search_for_starship
        elsif user_input == "4"
            end_program 
        else 
            puts "Invalid input".colorize(:red)
        end
   
    end

    def search_for_people
        print "Who would you like to look up? ".colorize(:green)
        input = gets.chomp
        if People.find_by_name(input)
            #puts "I'm in here"
            person = People.find_by_name(input)
            #binding.pry 
        else
            person = api.fetch_people_by_name(input)
      
        end

        if person
            puts person.display_data
          else
            puts
            puts "Could not find a person by that name.".colorize(:red)
            puts
        end    

    end

    def search_for_planet
        print "What planet would you like to look up? ".colorize(:green)
        input = gets.chomp
        planet = api.fetch_planet_by_name(input)
        if planet
          puts planet.display_data
        else
          puts "Could not find a planet by that name.".colorize(:red)
        end
    
    end

    def search_for_starship
        print "What starship would you like to look up? ".colorize(:green)
        input = gets.chomp
        starship = api.fetch_starship_by_name(input)
        if starship
          puts starship.display_data
        else
          puts "Could not find a starship by that name.".colorize(:red)
        end

    end

    def end_program
        puts "---May the force be with you.---".colorize(:blue)
        exit 
    end



end