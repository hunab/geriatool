class Fall < ActiveRecord::Base
  attr_accessible :fall, :fall_date
  belongs_to :patient
end
