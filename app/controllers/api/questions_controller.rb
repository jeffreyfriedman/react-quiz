require 'pry'

class Api::QuestionsController < ApiController

  def index
    question = Question.all.sample
    answers = question.answers

    json = {"question": question, "answers": answers }

    respond_to do |format|
      format.json { render json: json }
    end
  end

end
