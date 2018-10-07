class TasksController < ApplicationController
  def show 
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(message_params)

    if @task.save
      flash[:success] = 'Task が正常に投稿されました'
      redirect_to @task
    else
      flash.now[:danger] = 'Task が投稿されませんでした'
      render :new
    end
  end

  def edit
    @task = Task.fin(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end
  
  def task_params
    params.require(:task).permit(:content, :title)
  end
end
