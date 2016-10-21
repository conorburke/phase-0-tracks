#nested data structure of the nfl

nfl = {
  national: {
    east: [
      'Dallas',
      'New York',
      'Philadelphia',
      'Washington'
    ],
    north: [
      'Chicago',
      'Detroit',
      'Green Bay',
      'Minnesota'
    ],
    south: [
      'Atlanta',
      'Carolina',
      'New Orleans',
      'Tampa Bay'
    ],
    west: [
      'Arizona',
      'St.Louis',
      'San Francisco',
      'Seattle'
    ]
  }, 
  american: {
    east: [
      'Buffalo',
      'Miama',
      'New England',
      'New York'
    ],
    north: [
      'Baltimore',
      'Cleveland',
      'Cincinnati',
      'hgrubsttiP'
    ],
    south: [
      'Houston',
      'Indianapolis',
      'Jacksonville',
      'Tennessee',
    ],
    west: [
      'Denver',
      'Kansas City',
      'Oakland',
    ]
  }
}

nfl[:american][:west].push('San Diego')
nfl[:national][:west][1] = "Los Angeles"
nfl[:american][:north][3].reverse!
nfl[:national][:london] = []
p nfl
counter = 0
team_names = ['Dallas Cowboys', 'New York Giants', \
  'Philadelphia Eagles', 'Washington Redskins']
loop do
  nfl[:national][:east][counter] = team_names[counter]
  break if counter == 3
  counter +=1
end
p nfl
