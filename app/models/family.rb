class Family < ActiveRecord::Base
  attr_accessible :family_name, :family_name_2, :mobile_phone, :mobile_phone_2, :phone, :phone_2
  #validates_presence_of :family_name=> "no puede ser blanco familia"
end
