class Family < ActiveRecord::Base
  attr_accessible :family_name, :family_name_2, :mobile_phone, :mobile_phone_2, :phone, :phone_2
  validates :family_name, :family_name_2, :presence => true
end
