#write own method that takes block and gives status
def print_status
  puts "this is the initial status: "
  yield("middle")
  puts "this is the latest status: " 
end
print_status do |middle|
  puts "This is the #{middle} status."  
end