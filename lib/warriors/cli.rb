class CLI

    def run
        intro
        WarriorScraper.scrape_team
        list_players
        previous_teams
        guess_position
    end

    def intro  
        puts "\n\nWelcome to the Warriors information page!\n\n\n"

        puts "Let's read more about our 2019 Warriors Players:\n\n\n"
    end    

    def list_players
        # Team.all.each.with_index(1){| p, i | puts "#{i}. #{p.team_player}"}
        Team.all.map do |team|
            team.team_player.each.with_index(1){| p, i | puts "#{i}. #{p}"}     
        end
    end  
    
    def guess_position
        puts "Hi my name is #{team_player[1]}, and I'm a #{team_position} for the Golden State Warriors."
    end   

    def previous_teams 
        #if yes, (second level)
        puts "\n\nWould you like to know what other teams I've played for?\n\n"
        puts "If so, please enter a number of which player you'd like to learn more about.\n\n"
        #allows user to declare yes or no if yes show list or if no return back
        #to main menu
    end

   

    

end    