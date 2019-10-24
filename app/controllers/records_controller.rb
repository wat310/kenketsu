class RecordsController < ApplicationController
  before_action :find_user
  before_action :find_record, only: [:edit, :update]

  def index
    @record = Record.all
    @records_search = Record.where(user_id: current_user.id).limit(3).order(:donation_day)
    @records = @records_search.to_a

    @num = 3 - @records.count

    @num.times do
      @records << nil
    end
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

  def edit
    
  end

  def update
    @record.update(record_params)
    if @record.save
      redirect_to action: 'index'
    else
      redirect_to edit_record_path(@record)
    end
  end


  private

  def find_user
    @user = User.find_by(id: current_user.id)
  end

  def find_record
    @record = Record.find(params[:id])
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
