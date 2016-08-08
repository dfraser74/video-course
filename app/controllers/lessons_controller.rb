class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show]
  before_action :is_admin?, only: [:new, :edit, :update, :destroy, :index]

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @chapters = Chapter.all
    @lesson = Lesson.friendly.find(params[:id])
    @user = current_user
    @chapter = @lesson.chapter_id
    @curprogression = LessonProgression.find_or_create_by(user_id: @user.id, lesson_id: @lesson.id)
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  # GET /lessons/1/edit
  def edit
    @lesson = Lesson.friendly.find(params[:id])
    @chapter = Chapter.friendly.find(params[:chapter_id])
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @chapter = Chapter.friendly.find(params[:chapter_id])
    @lesson = Lesson.new(lesson_params)    
    @lesson.chapter_id = @chapter.id
    @lesson.save
    redirect_to chapter_path(@lesson.chapter)
    flash[:notice] = "'#{@lesson.title}' Created"
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to chapter_lesson_path }
        flash[:notice] = "'#{@lesson.title}' was successfully updated."
        format.json { render :show, status: :ok, location: chapter_lesson_path }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    respond_to do |format|
      format.html { redirect_to chapter_path(@lesson.chapter)}
      flash[:notice] = "'#{@lesson.title}' was successfully destroyed." 
      format.json { head :no_content }
    @lesson.destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:slug, :coverimage, :video, :title, :description, :sources, :actions, :files, :images, :videos)
    end
end
