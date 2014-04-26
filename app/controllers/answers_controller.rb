class AnswersController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]


	def create
		@answer.user = current_user
		@question = Question.find(params[:question_id])
		@answer = @question.answers.create(answer_params)
		@answer.save
		redirect_to question_path(@question)
	end

	def destroy
		@question = Question.find(params[:question_id])
		@answer = @question.answers.find(params[:id])
		@answer.destroy
		redirect_to question_path(@question)
	end


	private
		def answer_params
			params.require(:answer).permit(:body, :rating, :email => current_user.email)
		end
end
