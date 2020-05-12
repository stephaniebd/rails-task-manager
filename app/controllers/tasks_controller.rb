class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new # render the from
    @task = Task.new
  end

  def create
    new_task = Task.create(params[:tasks])

    redirect_to task_path(new_task)
  end
end
