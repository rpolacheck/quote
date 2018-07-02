class QuotesController < ApplicationController
  def index
    @text = Text.order("RANDOM()").first
  end

  def new
    @text = Text.new
  end

  def create
    Text.create(text_params)
    redirect_to root_path
  end

  private

  def text_params
    params.require(:text).permit(:saying, :author)
  end
end
