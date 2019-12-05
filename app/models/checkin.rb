# == Schema Information
#
# Table name: checkins
#
#  id          :integer          not null, primary key
#  description :string
#  lat         :decimal(, )
#  lng         :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Checkin < ApplicationRecord
end
