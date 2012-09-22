require 'csv'
CSV.foreach('keepers.csv') do |row|
	  Keeper.create!(
	  	:Last => row[1],
	  	:First => row[2],
	  	:Position => row[3],
	  	:Year1 => row[4],
	  	:Year2 => row[5],
	  	:Year3 => row[6],
	  	:Year4 => row[7],
	  	:YearsKept => row[8])

	end
