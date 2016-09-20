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
#nfl_teams = nfl[:national][:east].map do |key, new_team|
#  team_names = ['Cowboys', 'Giants', 'Eagles', 'Redskins']
#  :east[key] = team_names[new_team]
#end
p nfl
#p nfl_teams
