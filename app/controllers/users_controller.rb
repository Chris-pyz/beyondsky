class UsersController < ApplicationController

  def index
    @user = policy_scope(User)
  end

  def show
    @user = current_user
    authorize @user
  end

end
