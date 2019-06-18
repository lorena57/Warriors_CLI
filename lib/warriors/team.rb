class Team

    attr_reader :team_number, :team_player, :team_position

    @@all = []

    def self.all
        @@all
    end   

    def initialize(team_number, team_player, team_position)
        @team_number = team_number
        @team_player = team_player
        @team_position = team_position
        @@all << self
    end

   

end
