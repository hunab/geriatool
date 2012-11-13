class HospitalDerivationsController < ApplicationController
  # GET /hospital_derivations
  # GET /hospital_derivations.json
  def index
    @hospital_derivations = HospitalDerivation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hospital_derivations }
    end
  end

  # GET /hospital_derivations/1
  # GET /hospital_derivations/1.json
  def show
    @hospital_derivation = HospitalDerivation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hospital_derivation }
    end
  end

  # GET /hospital_derivations/new
  # GET /hospital_derivations/new.json
  def new
    @hospital_derivation = HospitalDerivation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hospital_derivation }
    end
  end

  # GET /hospital_derivations/1/edit
  def edit
    @hospital_derivation = HospitalDerivation.find(params[:id])
  end

  # POST /hospital_derivations
  # POST /hospital_derivations.json
  def create
    @hospital_derivation = HospitalDerivation.new(params[:hospital_derivation])

    respond_to do |format|
      if @hospital_derivation.save
        format.html { redirect_to @hospital_derivation, notice: 'Hospital derivation was successfully created.' }
        format.json { render json: @hospital_derivation, status: :created, location: @hospital_derivation }
      else
        format.html { render action: "new" }
        format.json { render json: @hospital_derivation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hospital_derivations/1
  # PUT /hospital_derivations/1.json
  def update
    @hospital_derivation = HospitalDerivation.find(params[:id])

    respond_to do |format|
      if @hospital_derivation.update_attributes(params[:hospital_derivation])
        format.html { redirect_to @hospital_derivation, notice: 'Hospital derivation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hospital_derivation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_derivations/1
  # DELETE /hospital_derivations/1.json
  def destroy
    @hospital_derivation = HospitalDerivation.find(params[:id])
    @hospital_derivation.destroy

    respond_to do |format|
      format.html { redirect_to hospital_derivations_url }
      format.json { head :no_content }
    end
  end
end
