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