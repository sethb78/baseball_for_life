require 'csv'
CSV.foreach('members.csv') do |row|
	Member.create!(
		:FullName => row[0],
		:FirstName => row[1],
		:LastName => row[2],
		:Card => row[3])
end
