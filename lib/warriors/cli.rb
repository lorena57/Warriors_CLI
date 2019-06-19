class CLI

    def run
        intro
        
        WarriorScraper.scrape_team

        list_players
    end

    def intro  
        puts "\n\nThis project is pissing me off!\n\n\n"

        puts "2019 Warriors Players:\n\n\n"
    end    

    def list_players
        
        # Team.all.each.with_index(1){| p, i | puts "#{i}. #{p.team_player}"}
        Team.all.map do |team|
            team.team_player.each.with_index(1){| p, i | puts "#{i}. #{p}"}     
        end
    end    

    def guess_position
        puts "Hi my name is #{team_player[1]}, do you know what position do I play?"
            # user will have a selection of different positions to choose from
            # user will have 3 chances
            # if user correct a comment of congratulations will populate
            #play again? or go to main menu
    end    

    def previous_teams 
        #if yes, (second level)
        puts "Do you want to know what other teams I've played for?"
        #allows user to declare yes or no if yes show list or if no return back
        #to main menu
        
    end    

end    