class QuestionsController < ApplicationController
    def show 
        @question = Question.find(params[:id])
    end

    def create
        @answer = Answer.create!(answer_params)
        redirect_to question_path(@answer.question_id + 1)
    end

    private

    def answer_params
        params.require(:answer).permit(:question_id, :student_id, :student_answer, :unknown, :not_applicable)
    end
end
