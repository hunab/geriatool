class FallsController < ApplicationController
  # GET /falls
  # GET /falls.json
  def index
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

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fall }
    end
  end

  # GET /falls/new
  # GET /falls/new.json
  def new
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
    @fall = Fall.new(params[:fall])

    respond_to do |format|
      if @fall.save
        format.html { redirect_to @fall, notice: 'Fall was successfully created.' }
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
        format.html { redirect_to @fall, notice: 'Fall was successfully updated.' }
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
