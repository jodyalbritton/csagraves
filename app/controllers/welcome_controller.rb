class WelcomeController < ApplicationController
  def index
    @listings = Plot.order('created_at DESC').limit(10).all
    @recent_cems = Cemetery.order('created_at DESC').limit(10).all
  end

  def about
  end

  def help
  end
end
