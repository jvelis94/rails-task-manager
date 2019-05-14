class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new
    end
    
    def create
        task = Task.new(strong_task_params)
        task.save
        redirect_to '/tasks'
    end

    def strong_task_params
        params.require(:task).permit(:title, :details)
    end
end
