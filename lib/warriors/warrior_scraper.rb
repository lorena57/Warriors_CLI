class WarriorScraper

    BASE_URL = "https://www.nba.com/teams/warriors"

    def self.scrape_team
        pg = open(BASE_URL)
        parsed_html = Nokogiri::HTML(pg)
        player_info = parsed_html.css('.row .nba-player-index__row')
        player_info.each do |number|
            #team_number = number.css('.nba-player-trending-item__number').map {|noko| noko.text}
            team_player = number.css(".nba-player-index__trending-item a:first").map{|item| item[:title]}
            team_position = number.css(".nba-player-index__details span[1]").map {|noko| noko.text}
            Team.new(team_player, team_position)
            #binding.pry
        end
    end  
    
    
            # def self.individual_player
            #     team_player.each do |player|
            #     Team.new(player)  
            #     binding.pry        
            #     end
                
            # end




         
         

end


            


