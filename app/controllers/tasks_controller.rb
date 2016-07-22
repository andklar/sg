class TasksController < ApplicationController

	def index
    @tasks = Task.all
    @task = @tasks.first
    # @submissions = @task.submissions
    @submission = @task.submissions.create(name: @task.name, task_id: @task.id, user_id: current_user.id)
  end

  def show
  	@task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_url, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_url, notice: 'Task was updated'
    else
      render :edit
    end
  end

  private

  def task_params
  	params.require(:task).permit(:name, :description, :points, :answer)
  end
end
