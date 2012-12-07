class FallsController < ApplicationController
  # GET /falls
  # GET /falls.json
  def index
    @patient = Patient.find params[:patient_id]
    @falls = Fall.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @falls }
    end
  end

  # GET /falls/1
  # GET /falls/1.json
  def show
    @fall = Fall.find(params[:id])

      if(!params[:patient_id].blank?)
        @patient = Patient.find(params[:patient_id]) 
      end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fall }
    end
  end

  # GET /falls/new
  # GET /falls/new.json
  def new
    @patient = Patient.find(params[:patient_id]) 
    @fall = Fall.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fall }
    end
  end

  # GET /falls/1/edit
  def edit
    @fall = Fall.find(params[:id])
  end

  # POST /falls
  # POST /falls.json
  def create
    @patient= Patient.find(params[:patient_id])
    @fall = Fall.new(params[:fall])
    @fall.patient = @patient

    respond_to do |format|
      if @fall.save
        format.html { redirect_to patient_falls_path(@patient), notice: 'Fall was successfully created.' }
        format.json { render json: @fall, status: :created, location: @fall }
      else
        format.html { render action: "new" }
        format.json { render json: @fall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /falls/1
  # PUT /falls/1.json
  def update
    @fall = Fall.find(params[:id])

    respond_to do |format|
      if @fall.update_attributes(params[:fall])
        format.html { redirect_to patient_fall_path(@fall.patient_id,@fall), notice: 'Fall was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /falls/1
  # DELETE /falls/1.json
  def destroy
    @fall = Fall.find(params[:id])
    @fall.destroy

    respond_to do |format|
      format.html { redirect_to falls_url }
      format.json { head :no_content }
    end
  end
end
