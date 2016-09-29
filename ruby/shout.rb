# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happilly(words)
#     words + "!!!" + " ;)"
#   end
# end

# puts Shout.yell_angrily("Go away")
# puts Shout.yell_happilly("Come here")

module Shout
  def yell_enthusiastically(team)
    "The " + team + " are the best team in the league!"
  end
end

class EaglesFan
  include Shout
end

class CowboysFan
  include Shout
end

eagles = EaglesFan.new
cowboys = CowboysFan.new
puts eagles.yell_enthusiastically("Eagles")
puts cowboys.yell_enthusiastically("Cowboys")
