class TasksController < ApplicationController
  def task_params
    params.require(:task).permit(:content, :title)
  end
  
  def index
    @tasks = Tasks.all
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

  def update
  end

  def destroy
  end
end