class MedicalRecord < ActiveRecord::Base
  attr_accessible :admission_date, :allergies, :decreasings, :diet, :exit_date, :exit_report, :incontinence, :objective
  #belongs_to :patient
end
