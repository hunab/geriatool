class ClinicalCoursesController < ApplicationController
  # GET /clinical_courses
  # GET /clinical_courses.json
  def index
    @clinical_courses = ClinicalCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clinical_courses }
    end
  end

  # GET /clinical_courses/1
  # GET /clinical_courses/1.json
  def show
    @clinical_course = ClinicalCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clinical_course }
    end
  end

  # GET /clinical_courses/new
  # GET /clinical_courses/new.json
  def new
    @clinical_course = ClinicalCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clinical_course }
    end
  end

  # GET /clinical_courses/1/edit
  def edit
    @clinical_course = ClinicalCourse.find(params[:id])
  end

  # POST /clinical_courses
  # POST /clinical_courses.json
  def create
    @clinical_course = ClinicalCourse.new(params[:clinical_course])

    respond_to do |format|
      if @clinical_course.save
        format.html { redirect_to @clinical_course, notice: 'Clinical course was successfully created.' }
        format.json { render json: @clinical_course, status: :created, location: @clinical_course }
      else
        format.html { render action: "new" }
        format.json { render json: @clinical_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clinical_courses/1
  # PUT /clinical_courses/1.json
  def update
    @clinical_course = ClinicalCourse.find(params[:id])

    respond_to do |format|
      if @clinical_course.update_attributes(params[:clinical_course])
        format.html { redirect_to @clinical_course, notice: 'Clinical course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clinical_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinical_courses/1
  # DELETE /clinical_courses/1.json
  def destroy
    @clinical_course = ClinicalCourse.find(params[:id])
    @clinical_course.destroy

    respond_to do |format|
      format.html { redirect_to clinical_courses_url }
      format.json { head :no_content }
    end
  end
end
