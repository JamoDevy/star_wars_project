require_relative "./star_wars/version"
require_relative "./star_wars/api"
require_relative "./star_wars/cli"
require_relative "./star_wars/people"


require 'httparty'
require 'net/http'
require 'pry'

module StarWars
  class Error < StandardError; end
  # Your code goes here...
end