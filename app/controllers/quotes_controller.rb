class QuotesController < ApplicationController
  def index
    @text = Text.order("RANDOM()").first
  end
end
