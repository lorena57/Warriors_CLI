class Team

    attr_reader :team_number

    @@all = []

    def self.all
        @@all
    end   

    def initialize(team_number)
        @team_number = team_number
        @@all << self
    end

   

end
