class QuotesController < ApplicationController
  def index
    @text = Text.order("RANDOM()").first
  end

  def new
    @text = Text.new
  end

end
