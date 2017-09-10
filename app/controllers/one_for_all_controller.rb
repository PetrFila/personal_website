class OneForAllController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create

    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver

      flash.keep[:notice] = "Success."
      redirect_to root_path
    else
      flash.now[:error] = "Cannot send message."
      render :new
    end
  end

  def complete
    @contact = Contact.new
  end
end
