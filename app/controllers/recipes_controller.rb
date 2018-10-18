class RecipesController < ApplicationController
  before_action :class_finder, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(class_params)
    if @recipe.valid?
      @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update(class_params)
      redirect_to @recipe
    else
      render @recipe
    end
  end

  def destroy
    @recipe.delete
    redirect_to recipes_path
  end

  private

  def class_finder
    @recipe = Recipe.find(params[:id])
  end

  def class_params
    params.require(:recipe).permit(:name, :user_id, ingredient_ids: [])
  end

  end
