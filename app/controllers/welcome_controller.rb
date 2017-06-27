class WelcomeController < ApplicationController
  def index
    flash[:notice] = "morinig"
  end
end
