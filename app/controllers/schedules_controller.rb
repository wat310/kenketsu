class SchedulesController < ApplicationController

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def update
    @user = User.find_by(id: current_user.id)
    @schedule = @user.schedule
    if @schedule.update(update_params)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy if schedule.user_id == current_user.id
    redirect_to root_path
  end

  def schedule_params
    params.require(:schedule).permit(
      :next_date,
      :next_time
      )
      .merge(user_id: current_user.id)
  end

  def update_params
    params.require(:schedule).permit(
      :next_date,
      :next_time
      )
  end
end
