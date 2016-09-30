class Dog
  # code goes here

  attr_reader :name, :mood

  def initialize(name, mood = "nervous")
    @name = name 
    @mood = mood
  end 

  def mood=(mood2)
    @mood = mood2
  end 
  
end