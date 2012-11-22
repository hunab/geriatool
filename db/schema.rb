# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121122094230) do

  create_table "abilities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "biochemistry_tests", :force => true do |t|
    t.date     "extraction_date"
    t.string   "glucemy"
    t.string   "hba1c"
    t.string   "urea"
    t.string   "creatinine"
    t.string   "uric_acid"
    t.string   "cholesterol"
    t.string   "cHDL"
    t.string   "cLDL"
    t.string   "triglycerides"
    t.string   "ast"
    t.string   "alt"
    t.string   "iron"
    t.string   "ferritin"
    t.string   "sodium"
    t.string   "potassium"
    t.string   "vsg"
    t.string   "cobalamins_vitb12"
    t.string   "ac_folico"
    t.string   "tsh"
    t.string   "ft3"
    t.string   "ft4"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "cell_blood_count_tests", :force => true do |t|
    t.date     "extraction_date"
    t.string   "red_blood_cells"
    t.string   "hemoglobin"
    t.string   "hematocrit"
    t.string   "vcm"
    t.string   "hcm"
    t.string   "chcm"
    t.string   "platelet"
    t.string   "leukocyte"
    t.string   "neutrophils"
    t.string   "cluster_differentiation"
    t.string   "monocyte"
    t.string   "eosinophil"
    t.string   "basophil"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "clinical_courses", :force => true do |t|
    t.date     "course_date"
    t.text     "M"
    t.text     "E"
    t.text     "A"
    t.text     "P"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "containments", :force => true do |t|
    t.date     "cont_start_date"
    t.date     "revision_date"
    t.date     "cont_end_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "diagnoses", :force => true do |t|
    t.string   "diagnosis"
    t.date     "diagnosis_date"
    t.string   "cie_10"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "exitus", :force => true do |t|
    t.date     "date"
    t.text     "exitus_diagnosis"
    t.string   "place_exitus"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "falls", :force => true do |t|
    t.date     "fall_date"
    t.string   "fall"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "families", :force => true do |t|
    t.string   "family_name"
    t.string   "phone"
    t.string   "mobile_phone"
    t.string   "family_name_2"
    t.string   "phone_2"
    t.string   "mobile_phone_2"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "patient_id"
  end

  create_table "galeries", :force => true do |t|
    t.string   "image"
    t.date     "image_date"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hospital_derivations", :force => true do |t|
    t.date     "derivation_date"
    t.text     "derivation_cause"
    t.string   "derivation_hospital"
    t.integer  "derivation_print"
    t.date     "discharge_date"
    t.text     "discharge_diagnosis"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "medical_records", :force => true do |t|
    t.string   "allergies"
    t.string   "decreasings"
    t.string   "diet"
    t.string   "incontinence"
    t.string   "objective"
    t.date     "admission_date"
    t.date     "exit_date"
    t.text     "exit_report"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "medicines", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "expiration"
    t.boolean  "available"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.date     "birth_date"
    t.string   "sex"
    t.string   "dni"
    t.string   "cip"
    t.string   "image"
    t.string   "room"
    t.integer  "admission"
    t.integer  "exit"
    t.integer  "exitus"
    t.integer  "registered"
    t.string   "code"
    t.string   "cap"
    t.string   "cap_doctor"
    t.string   "insurance_comp"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "treatments", :force => true do |t|
    t.string   "treatment"
    t.string   "national_code"
    t.string   "introduction"
    t.float    "de"
    t.float    "co"
    t.float    "ce"
    t.float    "no"
    t.float    "otro"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "num_pills"
    t.integer  "prescriptions"
    t.integer  "current_treatment"
    t.string   "modify"
    t.integer  "med_treat_order"
    t.integer  "target"
    t.float    "prize"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "ulcers", :force => true do |t|
    t.date     "ulcer_start_date"
    t.string   "ulcer"
    t.date     "ulder_end_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vaccines", :force => true do |t|
    t.string   "vaccine"
    t.date     "vaccine_date"
    t.text     "vaccine_observation"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
