# class WarriorScraper

#     BASE_URL = "https://www.nba.com/teams/warriors"

#     @@team_player = []
#     @@team_position = []

#     def self.scrape_team

#         war = Team.new
#         pg = open(BASE_URL)
#         parsed_html = Nokogiri::HTML(pg)
#         player_info = parsed_html.css('.row .nba-player-index__row')
#         player_info.each do |number|
#             #team_number = number.css('.nba-player-trending-item__number').map {|noko| noko.text}
#             @@team_player = number.css(".nba-player-index__trending-item a:first").map{|item| item[:title]}
#             @@team_position = number.css(".nba-player-index__details span[1]").map {|noko| noko.text}
#             # team_player.each {|indiv| @@holder = Player.new(indiv)}
#             # team_position.each {|pos| @h@older.position = pos}
#             # war.players << @@holder
            
#         end
        
#     end 

#     def self.team_player
#         @@team_player
#     end

#     def self.team_position
#         @@team_position
#     end
# end

# class Player

#     attr_accessor :name, :position

#     def initialize(name)
#         # @position = position
#         @name = name
#     end    

#     def self.new_from_scraper
#         war = Team.new
#         x = WarriorScraper.team_player.each {|play| binding.pry Player.new(play)}
#     end   



# end    

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
        
        # player.dob = stats[0]
        # player.age = stats[1]
        # player.from = stats[2]
        # player.nba_debut = stats[3]
        # player.yearsInNba = stats[4]
        # player.previously = stats[5]
        # end#end method
    end #ends class

end





            

         


