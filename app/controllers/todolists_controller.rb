class TodolistsController < ApplicationController

  def index
    @todolists = Todolist.all
    @todolist = Todolist.new
  end

  def create
    @todolist = Todolist.new(todolist_params)
    if @todolist.save
      redirect_to todolists_path
    else
      render :new
    end
  end

  def show
    @todolist = todolist.find(params[:id])
  end

  def edit
    @todolist = todolist.find(params[:id])
  end

  def update
    @todolist = todolist.find(params[:id])
    if @todolist.update(todolist_params)
      redirect_to todolist_path(@user),notice: "編集が完了しました！"
    else
      render :edit
    end
  end

  def destroy
    @todolist = todolist.find(params[:id])
    render :index
  end
  
end
