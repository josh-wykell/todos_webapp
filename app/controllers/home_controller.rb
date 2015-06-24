class HomeController < ApplicationController
  
  def index
    @recent_lists = List.order('created_at DESC').limit(5)
  end

  # def recent_list_id
  #   @list = List.find(param[:list_id])
  # end
end