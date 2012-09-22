require 'csv'
CSV.foreach('powerrankings.csv') do |row|
	PowerRanking.create!(
		:Week => row[0],
		:Date => row[1],
		:Rank => row[2],
		:Team => row[3],
		:Record => row[4],
		:LastWeek => row[5],
		:Move => row[6],
		:Comments => row[7],
		:Stud => row[8],
		:Dud => row[9])
end
