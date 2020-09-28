# pet_shelter.rb
# consider the given code. Write the classes an methods that will be necessary to make
# this code run, and output the following:
# => P Hanson has adopted the following pets:
# => a cat named Butterscotch
# => a cat named Pudding
# => a bearded dragon named Darwin

class Pet
  attr_reader :species, :name

  def initialize(species, name)
    @species = species
    @name = name
  end
end

class Owner
  attr_reader :name
  attr_accessor :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.length
  end
end

class Shelter
  attr_reader :rescues

  def initialize
    @rescues = []
  end

  def rescue(pet)
    @rescues << pet
  end

  @@owners = []

  def adopt(owner_name, pet_name)
    if !@@owners.include?(owner_name)
      @@owners << owner_name
    end
    owner_name.pets << pet_name
  end

  def print_adoptions
    @@owners.each do |item|
      puts "#{item.name} has adopted the following pets:"
      item.pets.each do |pet|
        puts "a #{pet.species} named #{pet.name}"
      end
      puts
    end
  end

  def print_rescues
    puts "The Animal Shelter has the following unadopted pets:"
    @rescues.each do |pet|
      puts "A #{pet.species} named #{pet.name}"
    end
    puts
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
doe          = Pet.new('cat', 'Doe')
sunny        = Pet.new('fish', 'Sunny')
asta         = Pet.new('dog', 'Asta')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
aholmes = Owner.new('A Holmes')
animal_shelter = Owner.new('Animal Shelter')

shelter = Shelter.new
shelter.adopt(aholmes, doe)
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.rescue(asta)
shelter.print_adoptions
shelter.print_rescues
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{aholmes.name} has #{aholmes.number_of_pets} adopted pets."
puts "The #{animal_shelter.name} has #{shelter.rescues.size} unadopted pets."