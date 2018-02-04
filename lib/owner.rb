require "pry"

class Owner
  @@all = []
  @@count = 0
  attr_accessor :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a human."
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
end
