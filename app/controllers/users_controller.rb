class UsersController < ApplicationController

  before_filter :require_user, :except => [:index, :new, :create, :assign_or_create_game]
  
  def require_user
    if session[:user_id] != params[:id].to_i
      redirect_to root_url, notice: "You must sign in first"
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    if session[:user_id].present?
      redirect_to root_url, notice: "You've already made an account, #{User.find(session[:user_id]).firstname}"
    end
    @user = User.new
    
  end

  def edit
    @user = User.find(params[:id])
  end


  def create
    @user = User.create(params[:user])

    game_name = params[:new_game_name]
    assign_or_create_game(game_name)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: 'User was successfully created.'
      #will want this to redirect to the user dashboard
    else
      render action: "new" 
    end
  end

  def update
    @user = User.find(params[:id])

    game_name = params[:new_game_name]
    assign_or_create_game(game_name)

    if @user.update_attributes(params[:user])
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: "edit" 
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def assign_or_create_game(game_name)
    unless game_name.empty?
      game = Game.find_by_name(game_name)
      if game.nil?
        game = Game.create(:name => game_name)
      end
      Collection.create(:game_id => game.id, :user_id => @user.id)
    end
  end


end

