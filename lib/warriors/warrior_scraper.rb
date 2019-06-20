class WarriorScraper

    BASE_URL = "https://www.nba.com/teams/warriors"

    @@team_player = []
    @@team_position = []

    def self.scrape_team

        war = Team.new
        pg = open(BASE_URL)
        parsed_html = Nokogiri::HTML(pg)
        player_info = parsed_html.css('.row .nba-player-index__row')
        player_info.each do |number|
            #team_number = number.css('.nba-player-trending-item__number').map {|noko| noko.text}
            @@team_player = number.css(".nba-player-index__trending-item a:first").map{|item| item[:title]}
            @@team_position = number.css(".nba-player-index__details span[1]").map {|noko| noko.text}
            # team_player.each {|indiv| @@holder = Player.new(indiv)}
            # team_position.each {|pos| @h@older.position = pos}
            # war.players << @@holder
            
        end
        
    end 

    def self.team_player
        @@team_player
    end

    def self.team_position
        @@team_position
    end
end

class Player

    attr_accessor :name, :position

    def initialize(name)
        # @position = position
        @name = name
    end    

    def self.new_from_scraper
        war = Team.new
        x = WarriorScraper.team_player.each {|play| binding.pry Player.new(play)}
    end   



end    

            


