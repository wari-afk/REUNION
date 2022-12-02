class DateOptionsController < ApplicationController
  def new
    @date_option = DateOption.new
    @reunion = Reunion.find(params[:reunion_id])
  end

  def create
    @date_option = DateOption.new(date_option_params)
    @reunion = Reunion.find(params[:reunion_id])
    @date_option.reunion = @reunion
    if @date_option.save
      redirect_to reunion_path(@reunion), notice: "You added date option"
    else
      render :new, status: :unprocessable_entity
    end
  end

  
  private

  def date_option_params
    params.require(:date_option).permit(:start_date, :end_date)
  end
end
