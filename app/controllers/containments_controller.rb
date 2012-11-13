class ContainmentsController < ApplicationController
  # GET /containments
  # GET /containments.json
  def index
    @containments = Containment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @containments }
    end
  end

  # GET /containments/1
  # GET /containments/1.json
  def show
    @containment = Containment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @containment }
    end
  end

  # GET /containments/new
  # GET /containments/new.json
  def new
    @containment = Containment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @containment }
    end
  end

  # GET /containments/1/edit
  def edit
    @containment = Containment.find(params[:id])
  end

  # POST /containments
  # POST /containments.json
  def create
    @containment = Containment.new(params[:containment])

    respond_to do |format|
      if @containment.save
        format.html { redirect_to @containment, notice: 'Containment was successfully created.' }
        format.json { render json: @containment, status: :created, location: @containment }
      else
        format.html { render action: "new" }
        format.json { render json: @containment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /containments/1
  # PUT /containments/1.json
  def update
    @containment = Containment.find(params[:id])

    respond_to do |format|
      if @containment.update_attributes(params[:containment])
        format.html { redirect_to @containment, notice: 'Containment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @containment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /containments/1
  # DELETE /containments/1.json
  def destroy
    @containment = Containment.find(params[:id])
    @containment.destroy

    respond_to do |format|
      format.html { redirect_to containments_url }
      format.json { head :no_content }
    end
  end
end
