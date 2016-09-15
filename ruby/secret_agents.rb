=begin
  encrypt pseudocode
    method takes a string input
    use loop to iterate through the string
      in the loop, store each letter in a array
      use the .next method to advance each letter by one character
    change the array with new letter back into a string
    print or return the string

  decrypt pseudocode
    method takes a string input
    use loop to iterate through the string
      in the loop, use .ord method to find unicode value of letter
      subtract 1 from the unicode
      use .chr to change unicode number back to string
      add the new string to the new array
    change the array with the new letters back into a string
    print or return the string
=end