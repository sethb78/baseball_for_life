require 'csv'
CSV.foreach('teamhistory.csv') do |row|
	HistoryTeam.create!(
		:Year => row[0],
		:FullName => row[1],
		:LastName => row[2],
		:Record => row[3],
		:Wins => row[4],
		:Losses => row[5],
		:Ties => row[6],
		:Percent => row[7],
		:GamesBehind => row[8],
		:Playoffs => row[9],
		:RegularSeasonFinish => row[10],
		:PlayoffFinish => row[11])
end
