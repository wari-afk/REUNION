class DateOptionsController < ApplicationController
  def create
    @date_option = DateOption.new(date_option_params)
    @reunion = Reunion.find(params[:reunion_id])
    @date_option.reunion = @reunion
    if @date_option.save
      respond_to do |format|
        format.html { redirect_to reunion_path(@reunion), notice: "You added date option" } # classic Rails Flow
        format.text { render partial: "date_options/reunion_date_block", locals: { reunion: @reunion, date_option: DateOption.new }, formats: [:html] }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @reunion = Reunion.find(params[:reunion_id])
    @date_options = @reunion.date_options
  end

  def upvote
    @date_option = DateOption.find(params[:date_option_id])
    @participation = Participation.find_by(user: current_user, reunion: @date_option.reunion)
    @date_option.liked_by @participation
  end

  # TODO about deciding the most popular option
  # def decide_date_option
  #   @participation.likes @date_option
  #   @date_option.votes_for.size
  # end

  private

  def date_option_params
    params.require(:date_option).permit(:start_date, :end_date)
  end
end
