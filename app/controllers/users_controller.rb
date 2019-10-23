class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: [:show, :edit, :update]
  before_action :schedule_info, only: [:show, :update]

  require 'date'

  def index
  end

  def show
    @records_search = Record.where(user_id: current_user.id).order(:created_at)
    @records = @records_search.to_a
    @prev_day = @records.last.donation_day if @records.length > 0

    today = Date.today
    reserve = Date.strptime(@schedule.next_date,'%Y年%m月%d日')
    # to_iがないと2/1のような表記になってしまう
    @difference = (reserve - today).to_i
  end

  def update
    # @user.update(update_params)
    # if @user.save
    #   redirect_to root_path
    # end
  end

  private

  def find_user
    @user = User.find_by(id: current_user.id)
  end

  def schedule_info
    if @user.schedule == nil
      @schedule = Schedule.new
    else
      @schedule = Schedule.find_by(user_id: current_user.id)
    end
  end
end
