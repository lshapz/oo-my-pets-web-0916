require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :dog, :fish, :cat, :pets
  attr_reader :species 

  @@all = []
  @@count = 0
  
  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species 
    @@all << self 
    @@count += 1
    @pets = pets
  end 

  def self.all
    @@all
  end 

  def pets
    @pets
  end 

  def self.count
    @@count 
  end

  def self.reset_all
    @@all.clear 
    @@count = 0
  end 

  def say_species
    "I am a #{@species}."
  end 

  def name=(name)
    @name = name 
  end 

  def buy_fish(fish_name)
    @fish = Fish.new(fish_name)
    self.pets[:fishes] << @fish
  end 
 
  def buy_dog(dog_name)
    @dog = Dog.new(dog_name)
    self.pets[:dogs] << @dog
  end 
# binding.pry
  def buy_cat(cat_name)
    @cat = Cat.new(cat_name)
    self.pets[:cats] << @cat
  end 

  def walk_dogs
    self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end 


  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = "happy"}
  end 


  def feed_fish
    self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end 

  def sell_pets
    self.pets.values.map {|pet_array| pet_array.map {|pet| pet.mood = "nervous"}}
    self.pets = {}
  end 

      # binding.pry

  def list_pets
    array = self.pets.values.map {|x| x.count}
    "I have #{array[0]} fish, #{array[1]} dog(s), and #{array[2]} cat(s)."
  end 

end