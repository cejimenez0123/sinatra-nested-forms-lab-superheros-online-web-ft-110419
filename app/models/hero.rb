class Hero
  attr_accessor :name, :power, :bio
    @@all = []
  def self.all
    @@all
  end

  def initialize(hash)
    @name  = hash[:name]
    @power = hash[:power]
    @bio   = hash[:bio]
    self.save
  end
  def self.clear
    @@all.clear
  end
  def save
    @@all << self
  end
end
