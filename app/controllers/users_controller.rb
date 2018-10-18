class UsersController < ApplicationController
  before_action :class_finder, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(class_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(class_params)
      redirect_to @user
    else
      render @user
    end
  end

  def destroy
    @user.delete
    redirect_to users_path
  end

  private

  def class_finder
    @user = User.find(params[:id])
  end

  def class_params
    params.require(:user).permit(:name, recipe_ids: [], ingredient_ids: [])
  end

end
