class PollsController < ApplicationController

  def show
    @poll = Poll.find(params[:id])
  end

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(poll_params)
    if @poll.save
      redirect_to @poll
    end
  end

  private
  def poll_params
    params.require(:poll).permit(:question, :option_one, :option_two)
  end

end
