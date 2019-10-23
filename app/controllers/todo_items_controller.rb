class TodoItemsController < ApplicationController
  before_action :set_todo_item, only: [ :update, :destroy]
  before_action :set_todo

  # GET / todo_items
  def index
    # todo = Todo.find params[:todo_id]
    # render json: todo.todo_items
  end

  # GET / todo_item
  def show
    render json: @todo.todo_items
  end

  # POST / todo_item
  def create
    @todo_item = @todo.todo_items.create(todo_items_params)

    if @todo_item.save
      render json: @todo_item, status: :created, location: @todo
    else
      render json: @todo_item.errors, status: :unprocessable_entity
    end
  end

  # PATH/PUT / todo_item
  def update
    if @todo_item.update(todo_items_params)
      render @todo_item
    else
      render json: @todo_item.errros, status: :unprocessable_entity
    end
  end

  # DELETE / todo_item
  def destroy
    @todo_item.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_todo_item
    @todo_item = TodoItem.find(params[:id])
  end

  def set_todo
    @todo = Todo.find(params[:todo_id])
  end

  def todo_items_params
    params[:todo_item].permit(:content)
  end

end