class Hero
  def initialize(args)
    args.each { |key, value| self.send("#{key}=", value) }
  end
end
