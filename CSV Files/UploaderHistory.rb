require 'csv'
#CSV.open('history.csv', 'r') do |row|
CSV.foreach('history.csv') do |row|
  HistoryYear.create!(:year => row[1], :first => row[2], :second => row[3], :third => row[4], :regular_season_champ => row[5])
puts "success"
end
