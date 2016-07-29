class SubmissionsController < ApplicationController
  before_action :load_task

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)

    @submission.user = current_user
    @submission.task = @task
    if @submission.user.score == nil
      @submission.user.score = 0
    end

    if @submission.answer != @task.answer
      redirect_to tasks_path, notice: "ERROR!ERROR!"
    elsif @submission.save
      @submission.user.score += @task.points
      @submission.user.save


      if @submission.user.submissions.count >= Task.all.count
        redirect_to user_path(@submission.user.id)
        return
      end
      
      redirect_to tasks_path, notice: 'You got it!'
    else
      render :new
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

    def load_task
      @task = Task.find(params[:task_id] || params[:answer_task_id] || params[:photo_task_id])
    end

  end
