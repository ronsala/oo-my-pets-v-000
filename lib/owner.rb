require "pry"

class Owner
  @@all = []
  attr_accessor :pets

  def initialize(name)
    @name = name
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
    # binding.pry
end
