#!/usr/bin/ruby

# Define a class with the class keyword
class Human

  # A class variable. It is shared by all
  # instances of this class.
  @@species = "H. sapiens"

  # Basic initializer
  def initialize(name, age=0)
    # Assign the argument to the "name"
    # instance variable for the instance
    @name = name
    # If no age given, we will fall back
    # to the default in the arguments list.
    @age = age
  end

  # Basic setter method
  def name=(name)
    @name = name
  end

  # Basic getter method
  def name
    @name
  end

  # The above functionality can be encapsulated
  # using the attr_accessor method as follows
  attr_accessor :name

  # Getter/setter methods can also be created
  # individually like this
  attr_reader :name
  attr_writer :name

  # A class method uses self to distinguish from
  # instance methods.
  # It can only be called on the class, not an instance.
  def self.say(msg)
    puts "#{msg}"
  end

  def species
    @@species
  end

end


# Instantiate a class
jim = Human.new("Jim Halpert")

dwight = Human.new("Dwight K. Schrute")

# Let's call a couple of methods
jim.species #=> "H. sapiens"
jim.name #=> "Jim Halpert"
jim.name = "Jim Halpert II" #=> "Jim Halpert II"
jim.name #=> "Jim Halpert II"
dwight.species #=> "H. sapiens"
dwight.name #=> "Dwight K. Schrute"

# Call the class method
Human.say("Hi") #=> "Hi"

# Variable's scopes are defined by the way we name them.
# Variables that start with $ have global scope
$var = "I'm a global var"
defined? $var #=> "global-variable"

# Variables that start with @ have instance scope
@var = "I'm an instance var"
defined? @var #=> "instance-variable"

# Variables that start with @@ have class scope
@@var = "I'm a class var"
defined? @@var #=> "class variable"

# Variables that start with a capital letter are constants
Var = "I'm a constant"
defined? Var #=> "constant"
