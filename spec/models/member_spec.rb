# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  FullName   :string(255)
#  FirstName  :string(255)
#  LastName   :string(255)
#  Card       :string(255)
#  Bio        :text
#  Email      :string(255)
#  Twitter    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Member do
  pending "add some examples to (or delete) #{__FILE__}"
end
