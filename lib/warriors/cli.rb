class CLI

    def run
        intro
        WarriorScraper.scrape_team
        list_players
    end

    def intro  
        puts "\n\nTesting\n\n\n"
        puts "This project is pissing me off!"
    end    

    def list_players
        puts "2019 Warriors Team:"
        Team.all.each.with_index(1){| p, i | puts "#{i}. #{p.team_player}"}
    end    

    def guess_position
        puts "Hi my name is #{team_player}, do you know what position do I play?"
            # user will have a selection of different position to choose from
            # user will have 3 chances
            # if user correct a comment of congratulations will populate
            #play again? or go to main menu
    end    

    def previous_teams
        puts "Do you want to know what other teams I've played for?"
        #allows user to
    end    

end    