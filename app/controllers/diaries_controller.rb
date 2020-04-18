class DiariesController < ApplicationController

  def index
    @diaries = Diary.all
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to
    else
      render :new
    end
  end

  def show
    @diary = diary.find(params[:id])
  end

  def edit
    @diary = diary.find(params[:id])
  end

  def update
    @diary = diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to diary_path(@user),notice: "編集が完了しました！"
    else
      render :edit
    end
  end

  def destroy
    @diary = diary.find(params[:id])
    render :index
  end

  private

  def diary_parameter
    params.require(:diary).permit(:title, :content, :start_time)
  end

end
