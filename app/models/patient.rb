class Patient < ActiveRecord::Base
  	#attributes from nested models (family and medical records) accepted by patients form
  	attr_accessible :admission, :birth_date, :cap, :cap_doctor, :cip, :code, :dni, :exit, :exitus, :image, :insurance_comp, :name, :registered, :room, :sex, :family_attributes, :medical_record_attributes
	
	#relation one-to-one in patients with family and medical records
	#destroy in cascade enabled (when you destroy a patient you destroy his family and medical record) 
	has_one :family, :dependent => :destroy
	has_one :medical_record, :dependent => :destroy
	
	#attributes from nested models (family and medical records) accepted by patients form
  	accepts_nested_attributes_for :family, :allow_destroy => true
	accepts_nested_attributes_for :medical_record, :allow_destroy => true
	
	belongs_to :user

end
