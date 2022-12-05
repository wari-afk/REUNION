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

  def index
    @reunion = Reunion.find(params[:reunion_id])
    @date_options = @reunion.date_options
  end

  def upvote
    # params[:date_option_ids] => ["8", "9"]
    @date_option_ids = []
    @date_option_ids.each do |date_option_id|
      @date_option = DateOption.find(params[date_option_id])
      @participation = Participation.find_by(user: current_user, reunion: @date_option.reunion)
      date_option.liked_by @participation
    end
    raise
  end

  def count_vote
    @date_option.votes_for.size
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
