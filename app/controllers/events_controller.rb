class EventsController < ApplicationController

  def show
    @events = Events.all
  end

  def new
    @event = Event.new(params(:event).require(:name, :date, :photo))
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

end
