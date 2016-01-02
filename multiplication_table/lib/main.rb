range = 0..12
 
range.
  map{|r| range.map{|c| c*r}}.
  map{|row| "#{row}\n"}.
  each{|row| print row}

