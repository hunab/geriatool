Geriatool::Application.routes.draw do
  resources :roles

  devise_for :users

  resources :biochemistry_tests

  resources :cell_blood_count_tests

  resources :treatments

  resources :hospital_derivations

  resources :clinical_courses

  resources :falls

  resources :ulcers

  resources :vaccines

  resources :diagnoses

  resources :containments

  resources :galeries

  resources :medical_records

  resources :exitus

  resources :families

  resources :patients

  resources :medicines

  root :to => 'patients#index'
  
  ##### crear capitols pertanyents a una historia
  resources :patients do
    resources :families, :only => [:new, :create, :index, :edit, :show, :destroy]
    resources :medical_records, :only => [:new, :create, :index, :edit, :show, :destroy]
    resources :diagnoses, :only => [:new, :create, :index, :edit, :show, :destroy]
    resources :falls, :only => [:new, :create, :index, :edit, :show, :destroy]
  end
end
