class Patient < ActiveRecord::Base
  attr_accessible :admission, :birth_date, :cap, :cap_doctor, :cip, :code, :dni, :exit, :exitus, :image, :insurance_comp, :name, :registered, :room, :sex
end
