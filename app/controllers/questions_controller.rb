class QuestionsController < ApplicationController
    def show 
        @question = Question.find(params[:id])
    end

    def create
        @answer = Answer.new(answer_params)
        
        if @answer.save
            redirect_to next_question_path
        else
            flash[:alert] = @answer.errors.full_messages.join(". ")
            redirect_back fallback_location: root_path
        end
    end
      
      private
      
    def next_question_path
        next_question = Question.where("id > ?", @answer.question_id).order(:id).first
        if next_question.present?
            question_path(next_question)
        else
            flash[:notice] = "Todas as questões foram respondidas."
            questions_path
        end
    end

    def answer_params
        params.require(:answer).permit(:question_id, :student_id, :student_answer, :unknown, :not_applicable)
    end
end
