class IngredientsController < ApplicationController
  before_action :class_finder, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(class_params)
    if @ingredient.valid?
      @ingredient.save
      redirect_to @ingredient
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ingredient.update(class_params)
      redirect_to @ingredient
    else
      render @ingredient
    end
  end

  def destroy
    @ingredient.delete
    redirect_to ingredients_path
  end

  private

  def class_finder
    @ingredient = Ingredient.find(params[:id])
  end

  def class_params
    params.require(:ingredient).permit(:name, recipe_ids: [])
  end

end
