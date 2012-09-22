# == Schema Information
#
# Table name: keepers
#
#  id         :integer          not null, primary key
#  Last       :string(255)
#  First      :string(255)
#  string     :string(255)
#  Position   :string(255)
#  Year1      :string(255)
#  Year2      :integer
#  Year3      :integer
#  Year4      :integer
#  YearsKept  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Keeper do
  pending "add some examples to (or delete) #{__FILE__}"
end
