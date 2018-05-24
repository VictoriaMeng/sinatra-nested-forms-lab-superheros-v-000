class Hero
  attr_accessor :name, :power, :bio

  def initialize(args)
    args.each { |key, value| self.send("#{key}=", value) }
    @@all << self
  end
end
