class WarriorScraper

    BASE_URL = "https://www.nba.com/teams/warriors"

    def self.scrape_team
        pg = open(BASE_URL)
        parsed_html = Nokogiri::HTML(pg)
        player_info = parsed_html.css('.row .nba-player-index__row')
        player_info.each do |number|
            team_number = number.css('.nba-player-trending-item__number').map(&:text)
            Team.new(team_number)
        end    
    
    end

end