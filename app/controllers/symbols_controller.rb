class SymbolsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  respond_to :js

  def create
    respond_to do |format|
      format.js do
        @question = Question.find(params[:question_id])
        @symbol = @question.symbols.create(symbol_params)
        binding.pry
      end
    end
  end

  def update
    respond_to do |format|
      format.js do
        @question = Question.find(params[:question_id])
        @symbol = Symbol.find(params[:id])
        @symbol.update(symbol_params)
      end
    end
  end

  private

  def symbol_params
    params.require(:symbol).permit(:name, :top, :left, :question_id)
  end
end
