class SubmissionsController < ApplicationController

	def new
		@submission = Submission.new
	end

	def create
    @submission = Submission.new(submission_params)

    @submission.user = current_user

    if @submission.save
      redirect_to tasks_path, notice: 'You got it!'
    else
      render :new, notice: 'Not quite! Give it another go!'
    end
  end

  def edit
  	@submission = Submission.find(params[:id])
  end 

  def update
  	@submission = Submission.find(params[:id])
  	if @submission.update
  		redirect_to tasks_path, notice: 'You got it!'
    else
      render :edit, notice: 'Not quite! Give it another go!'
    end
  end

	private

  def submission_params
  	params.require(:submission).permit(:name, :task_id, :user_id, :answer)
  end
end
