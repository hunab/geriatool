class HospitalDerivation < ActiveRecord::Base
  attr_accessible :derivation_cause, :derivation_date, :derivation_hospital, :derivation_print, :discharge_date, :discharge_diagnosis
end
