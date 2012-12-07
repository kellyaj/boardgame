class GroupsController < ApplicationController
  before_filter :current_user_check, :only => [ :join ]
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @upcoming_event = @group.events.first(:order => 'event_date asc')
   
    group_members = Member.find_all_by_group_id(@group.id)
    @posts = Array.new
    group_members.each do |member|
      @posts << Post.find_all_by_member_id(member.id)
    end
    
  end

  def new
    @group = Group.new
  end


  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(params[:group])

    if @group.save
      redirect_to @group, notice: 'Group was successfully created.' 
    else
      render action: "new"
    end
  end

  def update
    @group = Group.find(params[:id])

    if @group.update_attributes(params[:group])
      redirect_to @group, notice: 'Group was successfully updated.' 
    else
      render action: "edit" 
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
  end

  def join
    @group = Group.find(params[:id])

    @group.add_member(current_user)
    redirect_to @group, notice: "You have successfully joined the group."
  end


end