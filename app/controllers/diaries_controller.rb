class DiariesController < ApplicationController
  before_action :authenticate_user! , only:[:new,:edit, :destroy]
  before_action :set_diary, only: [:edit, :show, :update, :destroy]
  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      Diary.create
    else
      render :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @diary.update(diary_params)
      render :update
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @diary.user_id
      @diary.destroy
      render :destroy
    else
      redirect_to action: :index
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:diary_title, :diary_comment, :diary_day, :image).merge(user_id: current_user.id)
  end

  def set_diary
    @diary = Diary.find(params[:id])
  end
end
