class RecordsController < ApplicationController
  before_action :find_user
  before_action :find_record, only: [:edit, :update]

  require 'date'

  def index
    @record = Record.all
    @records_search = Record.where(user_id: current_user.id).limit(3).order(donation_day: "DESC")
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
    if @record.save
      redirect_to records_path
    else
      # redirect_to new_record_path
      render "new"
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

  def history
    @history = Record.where(user_id: current_user.id).order(donation_day: "ASC")

    # セレクトボックス用の配列
    # history_year = Record.select(:donation_day)

    # donation_dayカラムのみを抽出
    history_year = Record.pluck(:donation_day)
    year_array = []
    history_year.each do |history|
      history_day = Date.strptime(history,'%Y年%m月%d日')
      history_year = history_day.year
      year_array << history_year
    end
    # 重複を削除
    @year_array = year_array.uniq
    last_year = @year_array[0]

    # 最初に表示するレコードをdonation_dayであいまい検索する
    @first_view = Record.where(user_id: current_user.id).where("donation_day LIKE ?", "%#{last_year}%")
    
    # binding.pry
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
