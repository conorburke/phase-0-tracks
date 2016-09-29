module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_happilly(words)
    words + "!!!" + " ;)"
  end
end

puts Shout.yell_angrily("Go away")
puts Shout.yell_happilly("Come here")
