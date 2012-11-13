class Treatment < ActiveRecord::Base
  attr_accessible :ce, :co, :current_treatment, :de, :end_date, :introduction, :med_treat_order, :modify, :national_code, :no, :num_pills, :otro, :prescriptions, :prize, :start_date, :target, :treatment
end
