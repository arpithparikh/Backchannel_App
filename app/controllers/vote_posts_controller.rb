class VotePostsController < ApplicationController
  # GET /vote_posts
  # GET /vote_posts.json
  def index
    @vote_posts = VotePost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vote_posts }
    end
  end

  # GET /vote_posts/1
  # GET /vote_posts/1.json
  def show
    @vote_post = VotePost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vote_post }
    end
  end

  # GET /vote_posts/new
  # GET /vote_posts/new.json
  def new
    @vote_post = VotePost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vote_post }
    end
  end

  # GET /vote_posts/1/edit
  def edit
    @vote_post = VotePost.find(params[:id])
  end

  # POST /vote_posts
  # POST /vote_posts.json
  def create
    @vote_post = VotePost.new(params[:vote_post])

    respond_to do |format|
      if @vote_post.save
        format.html { redirect_to @vote_post, notice: 'Vote post was successfully created.' }
        format.json { render json: @vote_post, status: :created, location: @vote_post }
      else
        format.html { render action: "new" }
        format.json { render json: @vote_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vote_posts/1
  # PUT /vote_posts/1.json
  def update
    @vote_post = VotePost.find(params[:id])

    respond_to do |format|
      if @vote_post.update_attributes(params[:vote_post])
        format.html { redirect_to @vote_post, notice: 'Vote post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vote_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_posts/1
  # DELETE /vote_posts/1.json
  def destroy
    @vote_post = VotePost.find(params[:id])
    @vote_post.destroy

    respond_to do |format|
      format.html { redirect_to vote_posts_url }
      format.json { head :no_content }
    end
  end
end
