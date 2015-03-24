class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    if current_user == nil
      redirect_to new_session_path
    else
      @user = current_user
    end
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      flash[:notice] = "Question successfully added!"
      redirect_to question_path(@question)
    else
      flash[:alert] = "There was a problem creating your question. Please try again."
      redirect_to new_question_path
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where(question_id: @question.id)
  end

private
  def question_params
    params.require(:question).permit(:title, :body)
  end
end
