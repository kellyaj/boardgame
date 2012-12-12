class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    
    respond_to do |format|
      if @post.save
        format.js { render 'create' }
        format.html { redirect_to groups_url, notice: 'Post was successfully created.' }
      else
        format.html { render action: 'new' }
      end
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
