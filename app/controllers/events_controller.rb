class EventsController < ApplicationController
  #before_action :authenticate_user!
  def index
  	 @event = Event.all
  end

  def new
  	@event = Event.new
  end

def create

    @event = Event.new(params_event)
    @event.admin_id = current_user.id

    if @event.save
      redirect_to event_path(@event.id)
      flash[:success]= "Ton évenement a bien été créé !"
    else
      render new_event_path
  end

end
  def show
    @event = Event.find(params[:id])
    @count = count
    @end_date = end_date
    @participated = participated?
  end
end
