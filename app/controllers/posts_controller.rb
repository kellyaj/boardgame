class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    
    respond_to do |format|
      format.html {
        if @post.save
          redirect_to groups_url, notice: 'Post was successfully created.' 
        else
          render action: "new"
        end }
      format.js 
    end 

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end
