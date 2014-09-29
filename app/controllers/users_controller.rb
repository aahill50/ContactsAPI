class UsersController < ApplicationController
  def index
    # render text: "I'm in the index action!"
    @users = User.all
    render json: @users
  end

  def create
    # render text: "I'm in the create action!"
    # render json: {'a_key' => 'a value'}
    user = User.new( params[:user].permit(user_params) )

    # save! will throw an error if it can't save
    # save  will return false if it can't save
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params) #if want better error copy def create style
    render json: @user
  end

  def user_params #make private function
    params[:user].permit(:username)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
    render json: @user
  end



end
