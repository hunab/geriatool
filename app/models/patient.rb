class Patient < ActiveRecord::Base
  	attr_accessible :admission, :birth_date, :cap, :cap_doctor, :cip, :code, :dni, :exit, :exitus, :image, :insurance_comp, :name, :registered, :room, :sex
	has_one :family
	accepts_nested_attributes_for :family, :allow_destroy => true

	belongs_to :user

end
