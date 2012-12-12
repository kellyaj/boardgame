class GroupsController < ApplicationController
  before_filter :current_user_check, :only => [ :join ]
  before_filter :was_invited, :only => [ :join ]
  before_filter :check_admin, :only => [:edit, :update, :destroy]
  before_filter :member_check, :only => [ :show ]
  
  def was_invited
    @group = Group.find(params[:id])
    unless session[:user_id] == @group.invites.find_by_user_id(session[:user_id]).user_id
      redirect_to root_url, notice: "You have not yet been invited"
      #this should redirect to a dashboard
    end
  end

  def member_check
    @group = Group.find(params[:id])
    unless Member.where(:group_id => @group.id, :user_id => session[:user_id]).present? || @group.invites.find_by_user_id(session[:user_id]).present?
      redirect_to root_url, notice: "You are not a member or an invitee of that group."
    end
  end
  def check_admin
    @group = Group.find(params[:id])
    if session[:user_id] == @group.members.where(:admin => true).first.user.id
    else
     redirect_to root_url, notice: "You need to be the group administrator to do that"
      #this should redirect to a dashboard
    end 
  end

  def index
    @groups = Group.all
  end


  def show
    @group = Group.find(params[:id])
    @post = Post.new
    @post.member = @group.members.where(:user_id => current_user.id).first
    @games = @group.games.uniq!
    @upcoming_event = @group.events.first(:order => 'event_date asc')
    @invite = Invite.new
    @invite.group_id = @group.id
    @posts = @group.posts
    @invitees = Invite.find_all_by_group_id(@group.id)
    
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
      @group.add_admin(current_user)
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
    redirect_to groups_url, notice: "That group has been destroyed"
  end

  def join
    @group = Group.find(params[:id])

    @group.add_member(current_user)

    respond_to do |format|
      format.js
      format.html 
    end
  end




end