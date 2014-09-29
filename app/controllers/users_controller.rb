class UsersController < ApplicationController
  def index
    render text: "I'm in the index action!"
  end

  def create
    # render text: "I'm in the create action!"
    render json: {'a_key' => 'a value'}
  end
end
