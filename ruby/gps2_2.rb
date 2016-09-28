# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # turn input into an array 
  # iterate over array and turn array values into hash keys
  # set default quantity to 1 and set this as the hash value
  # call print method to print the list to the console [can you use one of your other methods here?]
# output: Hash [what data type goes here, array or hash?]
def create_list(list)
  groceries = []
  groceries = list.split(' ')
  grocery_list = {}
  groceries.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end

p create_list("apples oranges milk")
grocery_list = create_list("apples oranges milk")

# Method to add an item to a list
# input: item name and optional quantity
# steps: accept 2 arguments (key, value) and assign that to the hash.
# output: print out current hash
def add_item(item, quantity, list)
  list[item] = quantity
  item
end

p add_item("lemonade", 2, grocery_list)
p add_item("tomatoes", 3, grocery_list)
p add_item("oions", 1, grocery_list)
p add_item("ice cream", 4, grocery_list)
p grocery_list

# Method to remove an item from the list
# input: would accept 2 parameters, which are the grocery list and whatever item they would like to remove.
# steps: Use a hash method like deleteif to remove unwanted item from the hash
# output: print updated has without the unwanted item.

def remove_item(item, list)
  list.delete_if do |i|
    i == item 
  end
end

remove_item("lemonade", grocery_list)
p grocery_list

# Method to update the quantity of an item
# input: would take 2 parameters. One for the item that they want to update and one for the new desired quantity.
# steps: iterate through the hash to see if the item is present, and if so, reassign the value. If item not present, we could print an error message or call the add method that have made.
# output: print out new key and value.

def update_item(item, quantity, list)
  list.each do |i, q|
    if list.has_key?(item)
      list[item] = quantity
    else 
      puts "List does not contain that item."
      break
    end
  end
end

update_item("ice cream", 1, grocery_list)
p grocery_list

# Method to print a list and make it look pretty
# input: accepts grocery list
# steps: iterate over the hash to print out the key and value pairs in a pretty way.
# output: string with the associated key and value pairs.

def print_list(list)
  list.each do |item, quantity|
    puts "There are #{quantity} #{item} on the grocery list!!"
  end
end 

print_list(grocery_list)