class InfoController < ApplicationController

  def home
    redirect_to articles_path if logged_in?
  end

  def contact_us

  end
  
end
