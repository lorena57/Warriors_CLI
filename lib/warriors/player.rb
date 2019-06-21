class Player
  attr_accessor :name, :position, :url, :dob, :age, :from, :nba_debut, :yearsInNba, :previously
  @@all = []

  def initialize(name)
      # @position = position
      @name = name
      @@all << self
  end 
  
  def self.all
    @@all
  end  

  def add_player_stats(stats_hash) #stat_hash comes from scrape_player
    stats_hash.each {|key, value| self.send(("#{key}="), value)}
  end

end 