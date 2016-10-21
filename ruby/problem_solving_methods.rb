#sort through array to find number index
numbers = [1,2,3,4,5]

def search_number(arr, num)
  counter = 0
  while counter < arr.length
    if arr[counter] == num
      return counter
    end
    counter += 1
  end
end

p search_number(numbers, 6)


#create an array of fibonacci numbers
def fibonacci(num)
  sequence = [0,1]
  counter = 2
  while counter < num 
    sequence[counter] = sequence[counter - 1] + 
      sequence[counter - 2]
    counter += 1
  end
  sequence
  #puts 218922995834555169026 == sequence[num - 1]
end

p fibonacci(100)


=begin
  Pseudocode a sorting method
  -use a method that takes a list of integers for sorting
  -take first number from called array and put it in a new
    blank array for comparison
    -compare number in new array to first number in old array
    -if new number is smaller, put back in old array at the end
    -take the new first number from called array and put in new 
      array
    -continue to compare new array number with old array first
      number and repeat process
    -if new array number is smaller than called array number
      -iterate through called array to see if new array number
        is smaller than all numbers
        -if not smaller, than push to back of called array
      -continue this number until new array first number is 
        smaller than all numbers in old array
      -when number in new array is smaller than all numbers in
        called array, move to a new (new) array called sorted
        array
    -continue putting number from called array into new array and
      iterating through them.  when they are the smallest left,
      push them to end of sorted array
=end

random = [3,2,5,1,7,0,8]
random2 = [-43, 800, 66, 0, 1, 2, 2, 2, 66, 40]

def sort_alg(arr)
  comparison_arr = []
  sorted_arr = []
  initial_length = arr.length
  while sorted_arr.length < initial_length
    comparison_arr.push(arr.shift)
    if arr.length == 0
      sorted_arr.push(comparison_arr.shift)
    else 
      if comparison_arr[0] > arr[0]
        arr.push(comparison_arr.shift)
      else #comparison_arr[0] <= arr[counter]
        tracked = comparison_arr[0]
        arr.each do |value|
          if tracked < value
            tracked = tracked
          else
            tracked = value
          end
        end
        if tracked == comparison_arr[0]
          sorted_arr.push(comparison_arr.shift)
        else
          arr.push(comparison_arr.shift)
        end
      end
    end
  end
  sorted_arr
end

p sort_alg(random)
p sort_alg(random2)
