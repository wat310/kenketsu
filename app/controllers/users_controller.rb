class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def mypage
  end

  def record
  end

  def acievement
  end

  private

  def find_user
    @user = User.find_by(id: current_user.id)
  end
end
