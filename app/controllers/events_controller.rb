class EventsController < ApplicationController
  before_filter :set_group

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
end
