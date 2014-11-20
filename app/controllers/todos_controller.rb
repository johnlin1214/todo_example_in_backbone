class TodosController < ApplicationController

  def index
    todos = Todo.all
    render json: todos
  end

  def show
    todo = Todo.find(params[:id])
    render json: todo.attributes
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(completed_at: Time.now)
    render json: todo.attributes
  end
end
