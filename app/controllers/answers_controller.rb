class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @user = current_user
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)

    if @answer.save
      flash[:notice] = "Your answer was added"
      redirect_to question_path(@question)
    else
      flash[:alert] = "Your answer cannot be added"
      redirect_to :back
    end
  end

  def show
  end

private
  def answer_params
    params.require(:answer).permit(:body).merge(user_id: current_user.id)
  end

end
