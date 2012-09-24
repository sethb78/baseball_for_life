# == Schema Information
#
# Table name: history_teams
#
#  id                  :integer          not null, primary key
#  Year                :string(255)
#  FullName            :string(255)
#  LastName            :string(255)
#  Record              :string(255)
#  Wins                :integer
#  Losses              :integer
#  Ties                :integer
#  Percent             :string(255)
#  GamesBehind         :string(255)
#  Playoffs            :string(255)
#  RegularSeasonFinish :string(255)
#  PlayoffFinish       :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'spec_helper'

describe HistoryTeam do
  pending "add some examples to (or delete) #{__FILE__}"
end
