require_relative "./warriors/version"
require_relative "./warriors/cli"
require_relative "./warriors/warrior_scraper"
require_relative "./warriors/team"

require 'open-uri'
require 'nokogiri'
require 'pry'

module Warriors
  class Error < StandardError; end
  # Your code goes here...
end
