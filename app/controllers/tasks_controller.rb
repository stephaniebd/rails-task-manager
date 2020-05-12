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
    new_task = Task.create(task_params)

    redirect_to task_path(new_task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
