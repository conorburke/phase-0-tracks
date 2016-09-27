class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(time)
    time.times do |time|
      puts "Woof!"
    end 
  end
  def roll_over 
    puts "*rolls over*"
  end
  def dog_years(year)
    year *= 7
  end
  def sit
    puts "I am sitting down!"
  end

end


# bailey = Puppy.new
# bailey.fetch("ball")
# bailey.speak(5)
# bailey.roll_over
# puts bailey.dog_years(5)
# bailey.sit

class Kitten
  def initialize(name)
    @name = name
    puts "Initializing new kitten #{@name}"
  end
  def meow(num)
    puts "meow " * num
  end
  def play
    puts "#{@name} is playing with yarn."
  end

end
names = ['cat1', 'cat2', 'cat3', 'cat4', 'cat5', 'cat6',
'cat7', 'cat8', 'cat9', 'cat10', 'cat11', 'cat12',
'cat13', 'cat14', 'cat15', 'cat16', 'cat17', 'cat18',
'cat19', 'cat20', 'cat21', 'cat22', 'cat23', 'cat24',
'cat25', 'cat26', 'cat27', 'cat28', 'cat29', 'cat30',
'cat31', 'cat32', 'cat33', 'cat34', 'cat35', 'cat36', 
'cat37', 'cat38', 'cat39', 'cat40', 'cat41', 'cat42', 
'cat43', 'cat44', 'cat45', 'cat46', 'cat47', 'cat48', 
'ca49', 'cat50' ]

kittens = []
for x in (0..49)
  kittens[x] = Kitten.new(names[x])
end
puts kittens

kittens.each do |index|
  index.meow(3)
  index.play
end