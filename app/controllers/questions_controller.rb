class QuestionsController < ApplicationController
  before_action :find_note, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
  @questions = Question.all.order("created_at DESC")
  end

  def show
    
  end

  def new
    #@proceso = Proceso.new
   #@question = current_user.questions.build
   @question = Question.new

  end

  def create
    @question = Question.new(question_params)
    #@question = current_user.questions.build

    if @question.save
      redirect_to @question
    else 
      render 'new'
    end
  end

    def update
    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
  end
end

  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private

  def find_note
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :description, :time )
  end
end
