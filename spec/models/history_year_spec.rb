# == Schema Information
#
# Table name: history_years
#
#  id                   :integer          not null, primary key
#  year                 :integer
#  first                :string(255)
#  second               :string(255)
#  third                :string(255)
#  regular_season_champ :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'spec_helper'

describe HistoryYear do
  pending "add some examples to (or delete) #{__FILE__}"
end
