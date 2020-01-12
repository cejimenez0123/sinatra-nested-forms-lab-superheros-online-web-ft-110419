class SuperHero
  attr_accessor :name, :power, :bio
    @@all = []
  def self.all
    @@all
  end

  def initialize(opts={})
    @name  = opts[:name]
    @power = opts[:power]
    @bio   = opts[:bio]
    self.save
  end
  def self.clear
    @@all.clear
  end
  def save
    @@all << self
  end
end
