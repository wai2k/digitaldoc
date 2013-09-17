class PagesController < ApplicationController
  layout :funky_layout

  def index
  end
  
  def schedule
  end

  private

  def funky_layout
    case action_name
    when "index"
      "home"
    else
      "application"
    end
  end
end
