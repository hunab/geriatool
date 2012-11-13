class ExitusController < ApplicationController
  # GET /exitus
  # GET /exitus.json
  def index
    @exitus = Exitu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exitus }
    end
  end

  # GET /exitus/1
  # GET /exitus/1.json
  def show
    @exitu = Exitu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exitu }
    end
  end

  # GET /exitus/new
  # GET /exitus/new.json
  def new
    @exitu = Exitu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exitu }
    end
  end

  # GET /exitus/1/edit
  def edit
    @exitu = Exitu.find(params[:id])
  end

  # POST /exitus
  # POST /exitus.json
  def create
    @exitu = Exitu.new(params[:exitu])

    respond_to do |format|
      if @exitu.save
        format.html { redirect_to @exitu, notice: 'Exitu was successfully created.' }
        format.json { render json: @exitu, status: :created, location: @exitu }
      else
        format.html { render action: "new" }
        format.json { render json: @exitu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exitus/1
  # PUT /exitus/1.json
  def update
    @exitu = Exitu.find(params[:id])

    respond_to do |format|
      if @exitu.update_attributes(params[:exitu])
        format.html { redirect_to @exitu, notice: 'Exitu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exitu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exitus/1
  # DELETE /exitus/1.json
  def destroy
    @exitu = Exitu.find(params[:id])
    @exitu.destroy

    respond_to do |format|
      format.html { redirect_to exitus_url }
      format.json { head :no_content }
    end
  end
end
