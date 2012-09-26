# == Schema Information
#
# Table name: power_rankings
#
#  id         :integer          not null, primary key
#  Week       :integer
#  Date       :string(255)
#  Rank       :integer
#  Team       :string(255)
#  Record     :string(255)
#  LastWeek   :integer
#  Move       :string(255)
#  Comments   :text
#  Stud       :text
#  Dud        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PowerRanking < ActiveRecord::Base
  attr_accessible :Comments, :Date, :Dud, :LastWeek, :Move, :Rank, :Record, :Stud, :Team, :Week



end