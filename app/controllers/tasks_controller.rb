class TasksController < ApplicationController
	def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to task_path(@task)
    else
      flash.now[:notice] = "ERROR! ERROR!"
      render :edit
    end
  end

  def create
    @task = Task.new(project_params)

    if @task.save
      redirect_to task_path(@task)
    else
      flash.now[:notice] = "ERROR! ERROR!"
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end  

  private
  def task_params
    params.require(:task).permit(:name, :description, :points)
  end
end