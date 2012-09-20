require 'fastercsv'
namespace :data do
  desc "Import data from CSV"
  task :import => :environment do
     task :teams do
     FasterCSV.foreach("history.csv") do |row|
           t = Team.create(:id=>row[0],:year=>row[1],:first=>row[2],:second=>row[3],:third=>row[4],:regular_season_champ=>row[5])
      end
   end 
end
end