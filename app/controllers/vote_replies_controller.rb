class VoteRepliesController < ApplicationController
  # GET /vote_replies
  # GET /vote_replies.json
  def index
    @vote_replies = VoteReply.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vote_replies }
    end
  end

  # GET /vote_replies/1
  # GET /vote_replies/1.json
  def show
    @vote_reply = VoteReply.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vote_reply }
    end
  end

  # GET /vote_replies/new
  # GET /vote_replies/new.json
  def new
    @vote_reply = VoteReply.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vote_reply }
    end
  end

  # GET /vote_replies/1/edit
  def edit
    @vote_reply = VoteReply.find(params[:id])
  end

  # POST /vote_replies
  # POST /vote_replies.json
  def create
    @vote_reply = VoteReply.new(params[:vote_reply])

    respond_to do |format|
      if @vote_reply.save
        format.html { redirect_to @vote_reply, notice: 'Vote reply was successfully created.' }
        format.json { render json: @vote_reply, status: :created, location: @vote_reply }
      else
        format.html { render action: "new" }
        format.json { render json: @vote_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vote_replies/1
  # PUT /vote_replies/1.json
  def update
    @vote_reply = VoteReply.find(params[:id])

    respond_to do |format|
      if @vote_reply.update_attributes(params[:vote_reply])
        format.html { redirect_to @vote_reply, notice: 'Vote reply was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vote_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_replies/1
  # DELETE /vote_replies/1.json
  def destroy
    @vote_reply = VoteReply.find(params[:id])
    @vote_reply.destroy

    respond_to do |format|
      format.html { redirect_to vote_replies_url }
      format.json { head :no_content }
    end
  end
end
