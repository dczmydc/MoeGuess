class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  def new
    if session["is_ad"] == false
      redirect_to "/", notice: "Only administer can post a question."
      return
    end
    @question = Question.new
  end

  def destroy
    question = Question.find_by(id: params["id"]) 
    question.delete
    redirect_to "/questions/"
  end

  def show
    @question = Question.find_by(id: params["id"])
  end

  def create
    if session["is_ad"] == false
      redirect_to "/", notice: "Only administer can post a question."
      return 
    end
    if session["admin_id"].blank?
      redirect_to "/", notice: "Only administer can post a question."
      return
    end
    @question = Question.new
    @question.description = params["description"]
    @question.qtype = params["qtype"]
    @question.sport = params["sport"]
    @question.end_time = params["end_time"]
    @question.round = params["round"]
    @question.admin_id = session["admin_id"]
    if @question.save
      redirect_to "/questions/", notice: "Submit question Success!"
    else
      # redirect_to "/users/new", notice: "Whoa, nice try!"
      render 'signup'
    end
  end

  def update
    # @prediction = Prediction.find_by(id: params["id"])
    @question = Question.find_by(id: params["id"])
    @question.answer = params["answer"]
    @predictions = Prediction.where("Predictions.question_id = #{@question.id}")


    #score = Calculation.calcScore(@question.qtype, @prediction.answer, @corr_ans)
    @question.save

    @predictions.each do |p|
      upd_score = Calculation.calcScore(@question.qtype, p.answer, params["answer"])
      p.score = upd_score
      p.save
    end
    redirect_to "/admins/#{session["admin_id"]}/announce"
  end


end