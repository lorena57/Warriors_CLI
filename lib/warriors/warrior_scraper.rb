class WarriorScraper

    BASE_URL = "https://www.nba.com/teams/warriors"

    def self.scrape_team

        war = Team.new
        pg = open(BASE_URL)
        parsed_html = Nokogiri::HTML(pg)
        player_info = parsed_html.css('.row .nba-player-index__row')
        player_info.each do |number|
            number.css(".nba-player-index__trending-item a:first").each do |person|
                person.css('.nba-player-index__details').each do |what|
                player = Player.new(person.attr('title'))
                player.url = 'http://www.nba.com' + person.attr('href') 
                player.position = what.css('span')[0].text
                war.players << player
             end  
          end
        end   
    end 

   def self.scrape_player_stats(secondlevel)
        stats = []
        pg = open(secondlevel)
        parsed_html = Nokogiri::HTML(pg)
        info = parsed_html.css(".nba-player-vitals__bottom-info")
        info.each {|x| stats << x.text.strip}

        all_stats = {dob: stats[0], age: stats[1], from: stats[2], nba_debut: stats[3], yearsInNba: stats[4], previously: stats[5]}
        
    end 

end





            

         


