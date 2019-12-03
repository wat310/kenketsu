class RecordsController < ApplicationController
  before_action :find_user
  before_action :find_record, only: [:edit, :update, :show]
  before_action :records_all, only: [:show, :history]

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

  def show
    # records_all = Record.where(user_id: current_user.id).order(donation_day: "DESC")
    records = @records_all.to_a
    count = records.count
    time = 3 - count
    @records = []

    if count < 3
      time.times do
        records << nil
        @records = records
      end
    else
      if records.first == @record
        @records = records.first(3)
      elsif records.last == @record
        @records = records.last(3)
      else
        i = records.index(@record) # 配列の番号
        for num in i-1..i+1 do
          record = records[num]
          @records << record
        end
      end

    end
    
  end

  def history
    if records_all.present?
      # donation_dayカラムのみを抽出
      history_year = Record.where(user_id: current_user.id).pluck(:donation_day)

      year_array = []
      history_year.each do |history|
        history_day = Date.strptime(history,'%Y年%m月%d日')
        history_year = history_day.year
        year_array << history_year
      end
      # 重複を削除、降順に並べ替え
      @year_array = year_array.uniq.sort!.reverse!
      last_year = @year_array[0]

      # 最初に表示するレコードをdonation_dayであいまい検索する
      @first_view = Record.where(user_id: current_user.id).where("donation_day LIKE ?", "%#{last_year}%")
    end
    
  end

  def select_year
    @select_year = Record.where(user_id: current_user.id).where("donation_day LIKE ?", "%#{params[:keyword]}%")
  end

  private

  def find_user
    @user = User.find_by(id: current_user.id)
  end

  def find_record
    @record = Record.find(params[:id])
  end

  def records_all
    @records_all = Record.where(user_id: current_user.id).order(donation_day: "DESC")
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
