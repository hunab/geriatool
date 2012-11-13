class UlcersController < ApplicationController
  # GET /ulcers
  # GET /ulcers.json
  def index
    @ulcers = Ulcer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ulcers }
    end
  end

  # GET /ulcers/1
  # GET /ulcers/1.json
  def show
    @ulcer = Ulcer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ulcer }
    end
  end

  # GET /ulcers/new
  # GET /ulcers/new.json
  def new
    @ulcer = Ulcer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ulcer }
    end
  end

  # GET /ulcers/1/edit
  def edit
    @ulcer = Ulcer.find(params[:id])
  end

  # POST /ulcers
  # POST /ulcers.json
  def create
    @ulcer = Ulcer.new(params[:ulcer])

    respond_to do |format|
      if @ulcer.save
        format.html { redirect_to @ulcer, notice: 'Ulcer was successfully created.' }
        format.json { render json: @ulcer, status: :created, location: @ulcer }
      else
        format.html { render action: "new" }
        format.json { render json: @ulcer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ulcers/1
  # PUT /ulcers/1.json
  def update
    @ulcer = Ulcer.find(params[:id])

    respond_to do |format|
      if @ulcer.update_attributes(params[:ulcer])
        format.html { redirect_to @ulcer, notice: 'Ulcer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ulcer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ulcers/1
  # DELETE /ulcers/1.json
  def destroy
    @ulcer = Ulcer.find(params[:id])
    @ulcer.destroy

    respond_to do |format|
      format.html { redirect_to ulcers_url }
      format.json { head :no_content }
    end
  end
end
