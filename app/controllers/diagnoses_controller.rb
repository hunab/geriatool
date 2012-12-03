class DiagnosesController < ApplicationController
  # GET /diagnoses
  # GET /diagnoses.json
  def index
    @patient = Patient.find params[:patient_id]
    @diagnoses = Diagnosis.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diagnoses }
    end
  end

  # GET /diagnoses/1
  # GET /diagnoses/1.json
  def show
    @diagnosis = Diagnosis.find(params[:id])
      if(!params[:patient_id].blank?)
        @patient = Patient.find(params[:patient_id]) 
      end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diagnosis }
    end
  end

  # GET /diagnoses/new
  # GET /diagnoses/new.json
  def new
    @patient = Patient.find(params[:patient_id]) 
    @diagnosis = Diagnosis.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diagnosis }
    end
  end

  # GET /diagnoses/1/edit
  def edit
    @diagnosis = Diagnosis.find(params[:id])
    #@patient = Patient.find(params[:patient_id]) 
  end

  # POST /diagnoses
  # POST /diagnoses.json
  def create
    @patient= Patient.find(params[:patient_id])
    @diagnosis = Diagnosis.new(params[:diagnosis])
    @diagnosis.patient = @patient

    respond_to do |format|
      if @diagnosis.save
        format.html { redirect_to patient_diagnoses_path(@patient), notice: 'Diagnosis was successfully created.' }
        format.json { render json: @diagnosis, status: :created, location: @diagnosis }
      else
        format.html { render action: "new" }
        format.json { render json: @diagnosis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diagnoses/1
  # PUT /diagnoses/1.json
  def update
    @diagnosis = Diagnosis.find(params[:id])
    #@patient = Patient.find(params[:patient_id]) 
    respond_to do |format|
      if @diagnosis.update_attributes(params[:diagnosis])
        format.html { redirect_to patient_diagnosis_path(@diagnosis.patient_id,@diagnosis), notice: 'Diagnosis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diagnosis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnoses/1
  # DELETE /diagnoses/1.json
  def destroy
    @diagnosis = Diagnosis.find(params[:id])
    @diagnosis.destroy

    respond_to do |format|
      format.html { redirect_to diagnoses_url }
      format.json { head :no_content }
    end
  end
end
