class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show]
  before_action :is_admin?, only: [:new, :edit, :update, :destroy]
  

  # GET /chapters
  # GET /chapters.json
  def index
    @user = current_user
    @chapters = Chapter.all
    @newchapter = Chapter.new
  end

  # GET /chapters/1
  # GET /chapters/1.json
  def show
    @user = current_user
    @lessons = Lesson.where(chapter_id: @chapter.id)
      @lessons.all.each do |lesson|
        LessonProgression.find_or_create_by(user_id: @user.id, lesson_id: lesson.id, chapter_id: @chapter.id )
      end
    if LessonProgression.where(user_id: @user.id, chapter_id: @chapter.id, completion: true).any?
      @completedlessons = LessonProgression.where(user_id: @user.id, chapter_id: @chapter.id, completion: true).count
      @totallessons = Lesson.where(chapter_id: @chapter.id).count
      @chapterprogress = (@completedlessons.to_f / @totallessons.to_f)*100
      @chapterprogress = @chapterprogress.to_i
    end
  end

  # GET /chapters/new
  def new
   @newchapter = Chapter.new
  end

  # GET /chapters/1/edit
  def edit
  end

  # POST /chapters
  # POST /chapters.json
  def create
    @chapter = Chapter.new(chapter_params)
    respond_to do |format|
      if @chapter.save
        format.html { redirect_to @chapter }
        flash[:notice] = "'#{@chapter.title}' Created"
        format.json { render :show, status: :created, location: @chapter }
      else
        format.html { render :new }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapters/1
  # PATCH/PUT /chapters/1.json
  def update
    respond_to do |format|
      if @chapter.update(chapter_params)
        format.html { redirect_to @chapter }
         flash[:notice] = "'#{@chapter.title}' Updated"
        format.json { render :show, status: :ok, location: @chapter }
      else
        format.html { render :edit }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapters/1
  # DELETE /chapters/1.json
  def destroy
    @chapter.destroy
    respond_to do |format|
      format.html { redirect_to chapters_url }
        flash[:notice] = "'#{@chapter.title}' Deleted"
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter
      @chapters = Chapter.all
      @chapter = Chapter.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_params
      params.require(:chapter).permit(:slug, :icon, :title, :description)
    end
end
