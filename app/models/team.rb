class Team 
  def initialize(args)
    args.each { |key, value| self.send("#{key}=", value) }
    @@all << self
  end
  
end