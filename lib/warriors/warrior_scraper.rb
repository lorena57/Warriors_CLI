class WarriorScraper

    BASE_URL = "https://www.nba.com/teams/warriors"

    def self.scrape_team
        pg = open(BASE_URL)
        binding.pry
    end


end
