class SolutionsController < ApplicationController

  def show
    question_answer = QuestionAnswer.find_by(question_str: params[:question_str])

    @answer = question_answer.solved_str
    @length = @answer.length
  end

  def new
  end

  def create
    @question_answer = QuestionAnswer.new(question_params)

    @answer = @question_answer.solved_str

    @length = @solved_str.length


    if @question_answer.save
      redirect_to :question_answer
    else
      render "new"
    end
  end

  private

  def question_params
    params.require.permit(:question_str)
  end
end
