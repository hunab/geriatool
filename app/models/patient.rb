class Patient < ActiveRecord::Base
  	attr_accessible :admission, :birth_date, :cap, :cap_doctor, :cip, :code, :dni, :exit, :exitus, :image, :insurance_comp, :name, :registered, :room, :sex, :family_attributes, :medical_record_attributes
	has_one :family
	has_one :medical_record
	accepts_nested_attributes_for :family, :allow_destroy => true
	accepts_nested_attributes_for :medical_record, :allow_destroy => true
	belongs_to :user

	#validates_presence_of :name => "no puede ser blanco"

end
