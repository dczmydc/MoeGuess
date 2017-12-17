class DiscussionsController < ApplicationController
  def index
    @discussions = Discussion.all
  end
  def new
    if (session["user_id"].blank?)
      redirect_to "/", notice: "Please sign in with a user account before posting a discussion!"
      return
    end
    @discussion = Discussion.new
  end

  def destroy
    discussion = Discussion.find_by(id: params["id"]) 
    discussion.delete
    redirect_to "/discussions"
  end

  def show
    @discussion = Discussion.find_by(id: params["id"])
  end

  def create
    @discussion = Discussion.new
    @discussion.content = params["content"]
    @discussion.title = params["title"]
    @discussion.user_id = session["user_id"]
    @discussion.post_time = Time.now

    if @discussion.save
      redirect_to "/discussions", notice: "Discussion submit success!"
    end
  end


end