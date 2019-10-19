class RecordsController < ApplicationController
  before_action :find_user

  def index
    @record = Record.all

  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    # binding.pry
    if @record.save
      redirect_to records_path
    else
      redirect_to new_record_path
    end

  end


  private

  def find_user
    @user = User.find_by(id: current_user.id)
  end

  def record_params
    params.require(:record).permit(
      :inspection_method,
      :donation_day,
      :ALT,
      :GTP,
      :TP,
      :ALB,
      :AperG,
      :CHOL,
      :GA,
      :RBC,
      :Hb,
      :Ht,
      :MCV,
      :MCH,
      :MCHC,
      :WBC,
      :PLT,
      )
      .merge(user_id: current_user.id)
  end
end
