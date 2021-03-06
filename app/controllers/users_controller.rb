class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # POST /users/login
  def login
    user = User.find_by(username: params[:user][:name])
    if user && user.authenticate(params[:user][:password])
      render json: {status: 200, user: user}
    else
      render json: {status: 401, message: "Unauthorized"}
    end
  end

  # GET /users
  def index
    @users = User.all.order('name')

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, user: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      set_user()
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :address, :profile_url, :password, :username)
    end
end
