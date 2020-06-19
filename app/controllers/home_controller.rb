class HomeController < ApplicationController

  def index
    @question = Question.offset( rand(Question.count) ).first

    @disp_katakana = Katakana.view(@question)

    @sounds = Sound.order("RANDOM()").limit(8)
  end

end