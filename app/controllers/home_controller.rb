class HomeController < ApplicationController
  
  def index
    @recent_lists = List.order("created_at DESC").limit(5)
  end
end
