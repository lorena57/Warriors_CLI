class Team

    attr_accessor :players
    
    # :team_position
    # :team_player
    @@all = []

    def self.all
        @@all
    end   

    def initialize
        @players = []
        # , team_position
        #@team_player = team_player
        # @team_position = team_position
        @@all << self
    end
end