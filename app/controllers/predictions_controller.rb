class PredictionsController < ApplicationController
  def index
    @predictions = Prediction.all
  end
  def new
    if session["admin_id"].present?
      redirect_to "/", notice: "Admin can not answer questions."
      return
    end
    if session["user_id"].blank?
      redirect_to "/", notice: "Please sign in before answering questions."
      return
    end
    @prediction = Prediction.new
  end

  def destroy
    prediction = Prediction.find_by(id: params["id"]) 
    prediction.delete
    redirect_to "/"
  end

  def show
    @prediction = Prediction.find_by(id: params["id"])
  end

  def create
    round_max = Question.maximum("round")
    questions = Question.where("Questions.round = #{round_max}")
    answer_count = 0
    questions.each do |q|
      if params["question#{q.id}"].present?
        @prediction = Prediction.new
        @prediction.answer = params["question#{q.id}"]
        @prediction.user_id = session["user_id"]
        @prediction.question_id = q.id
        @prediction.score = 0.0
        @prediction.pred_time = Time.now
        @prediction.save
        answer_count = answer_count + 1
      end
    end
    redirect_to "/users/#{session["user_id"]}", notice: "You have just submit #{answer_count} answer for this round!"
  end

  # def update
  #   @prediction = Prediction.find_by(id: params["id"])
  #   @question = Question.find_by(id: @prediction.question_id)
  #   @corr_ans = params["corr_ans"]
  #   score = Calculation.calcScore(@question.qtype, @prediction.answer, @corr_ans)
  #   @prediction.score = score
  #   @prediction.save
  #   redirect_to "/"
  # end

end