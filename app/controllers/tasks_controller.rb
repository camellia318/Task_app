class TasksController < ApplicationController
  layout 'tasks'
  
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def add
    if request.post? then
      Task.create(task_params)
      goback
    else
      @task = Task.new
    end  
  end

  def edit
    @task = Task.find(params[:id])
    if request.patch? then
      @task.update(task_params)
      goback
    end  
  end
  
  def delete
    Task.find(params[:id]) .destroy
    goback
  end
  
  private
  def task_params
    params.require(:task) .permit(:title, :start_date, :end_date, :update_date, :memo)
  end
  
  def goback
    redirect_to '/tasks'
  end
  
end
