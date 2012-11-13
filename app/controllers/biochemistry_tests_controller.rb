class BiochemistryTestsController < ApplicationController
  # GET /biochemistry_tests
  # GET /biochemistry_tests.json
  def index
    @biochemistry_tests = BiochemistryTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @biochemistry_tests }
    end
  end

  # GET /biochemistry_tests/1
  # GET /biochemistry_tests/1.json
  def show
    @biochemistry_test = BiochemistryTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @biochemistry_test }
    end
  end

  # GET /biochemistry_tests/new
  # GET /biochemistry_tests/new.json
  def new
    @biochemistry_test = BiochemistryTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @biochemistry_test }
    end
  end

  # GET /biochemistry_tests/1/edit
  def edit
    @biochemistry_test = BiochemistryTest.find(params[:id])
  end

  # POST /biochemistry_tests
  # POST /biochemistry_tests.json
  def create
    @biochemistry_test = BiochemistryTest.new(params[:biochemistry_test])

    respond_to do |format|
      if @biochemistry_test.save
        format.html { redirect_to @biochemistry_test, notice: 'Biochemistry test was successfully created.' }
        format.json { render json: @biochemistry_test, status: :created, location: @biochemistry_test }
      else
        format.html { render action: "new" }
        format.json { render json: @biochemistry_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /biochemistry_tests/1
  # PUT /biochemistry_tests/1.json
  def update
    @biochemistry_test = BiochemistryTest.find(params[:id])

    respond_to do |format|
      if @biochemistry_test.update_attributes(params[:biochemistry_test])
        format.html { redirect_to @biochemistry_test, notice: 'Biochemistry test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @biochemistry_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biochemistry_tests/1
  # DELETE /biochemistry_tests/1.json
  def destroy
    @biochemistry_test = BiochemistryTest.find(params[:id])
    @biochemistry_test.destroy

    respond_to do |format|
      format.html { redirect_to biochemistry_tests_url }
      format.json { head :no_content }
    end
  end
end
