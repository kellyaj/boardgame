class EventsController < ApplicationController
  before_filter :set_group, :except => [ :join ]

  def set_group
    @group = Group.find(params[:group_id])
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @game_suggestion = GameSuggestion.new
    @game_suggestion.event_id = @event.id
    
    @game_suggestions = GameSuggestion.find_with_reputation(:upvotes, :all, order: "upvotes desc")
    @rsvp = Rsvp.new
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new (params[:event])
    @event.group_id = params[:group_id]

    if @event.save
      
      redirect_to [@group, @event], notice: "Event was successfully created."
    else
      render action: 'new'
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update_attributes(params[:event])
      redirect_to [@group, @event], notice: "Event was successfully edited"
    else
      render action: "edit"
    end
  end

  def destroy
    @event = Event.find(params:[id])
    @event.destroy
  end
#The redirect here is broken, can't do @event??
  def join
    @event = Event.find(params[:id])

    @event.add_rsvp(current_user)
    redirect_to groups_url, notice: "You've RSVP'd to this event"
  end
end
