#class API

    #BASE_URL = "https://swapi.py4e.com/api/"
    
    #def call
        #url = BASE_URL + "/people" 
        #uri = URI(url)
        #response = Net::HTTP.get(uri)
        #formatted_resp = JSON.parse(response)
        #formatted_resp["results"].each do |people_hash|
            #binding.pry
        #end
        
    #end

#end

class API

    BASE_URI = "https://swapi.py4e.com/api/"

    def fetch_people_by_name(name)

        uri = URI(BASE_URI + "people/?search=#{name}")
        people = make_request(uri)
        binding.pry
        if people["results"][0]
            People.new(people["results"][0])
        else
            nil
        end

    end

    def make_request(uri)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
    end

end