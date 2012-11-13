class CellBloodCountTestsController < ApplicationController
  # GET /cell_blood_count_tests
  # GET /cell_blood_count_tests.json
  def index
    @cell_blood_count_tests = CellBloodCountTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cell_blood_count_tests }
    end
  end

  # GET /cell_blood_count_tests/1
  # GET /cell_blood_count_tests/1.json
  def show
    @cell_blood_count_test = CellBloodCountTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cell_blood_count_test }
    end
  end

  # GET /cell_blood_count_tests/new
  # GET /cell_blood_count_tests/new.json
  def new
    @cell_blood_count_test = CellBloodCountTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cell_blood_count_test }
    end
  end

  # GET /cell_blood_count_tests/1/edit
  def edit
    @cell_blood_count_test = CellBloodCountTest.find(params[:id])
  end

  # POST /cell_blood_count_tests
  # POST /cell_blood_count_tests.json
  def create
    @cell_blood_count_test = CellBloodCountTest.new(params[:cell_blood_count_test])

    respond_to do |format|
      if @cell_blood_count_test.save
        format.html { redirect_to @cell_blood_count_test, notice: 'Cell blood count test was successfully created.' }
        format.json { render json: @cell_blood_count_test, status: :created, location: @cell_blood_count_test }
      else
        format.html { render action: "new" }
        format.json { render json: @cell_blood_count_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cell_blood_count_tests/1
  # PUT /cell_blood_count_tests/1.json
  def update
    @cell_blood_count_test = CellBloodCountTest.find(params[:id])

    respond_to do |format|
      if @cell_blood_count_test.update_attributes(params[:cell_blood_count_test])
        format.html { redirect_to @cell_blood_count_test, notice: 'Cell blood count test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cell_blood_count_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cell_blood_count_tests/1
  # DELETE /cell_blood_count_tests/1.json
  def destroy
    @cell_blood_count_test = CellBloodCountTest.find(params[:id])
    @cell_blood_count_test.destroy

    respond_to do |format|
      format.html { redirect_to cell_blood_count_tests_url }
      format.json { head :no_content }
    end
  end
end
