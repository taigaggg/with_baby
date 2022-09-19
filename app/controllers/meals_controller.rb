class MealsController < ApplicationController
  before_action :authenticate_user! , only:[:new,:edit, :destroy]
  before_action :set_meal, only: [:edit, :show, :update, :destroy]
  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      Meal.create
    else
      render :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @meal.update(meal_params)
      render :update
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @meal.user_id
      @meal.destroy
      render :destroy
    else
      redirect_to root_path
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:meal_title, :meal_comment, :taste_id, :meal_time_id, :meal_day, :image).merge(user_id: current_user.id)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end

