class SolutionsController < ApplicationController

  def show
    @solution = Solution.find_by(question_str: params[:question_str])
    @answer = @solution.solved_str
    @length = @answer.length
  end

  def new
    @solution = Solution.new
  end

  def create
    solution = Solution.new(question_params)

    if solution.save
      @answer = solution.solved_str
      @length = @answer.length
      redirect_to action: "show", question_str: params[:solution][:question_str]
    else
      render "new"
    end
  end

  private

  def question_params
    params.require(:solution).permit(:question_str)
  end
end
