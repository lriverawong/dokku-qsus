class InfoController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:error] = nil
      redirect_to root_path(:anchor => '#')
      flash[:success] = 'Thank you for your message!'
    else
      # redirect_to root_path(anchor: 'contact')
      render :new
      flash[:error] = 'Cannot send message.'
    end
  end
end