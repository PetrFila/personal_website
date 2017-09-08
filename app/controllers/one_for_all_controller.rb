class OneForAllController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create

    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      # flash.now[:error] = nil
      flash.keep[:notice] = "Success."
      redirect_to root_path#, flash: {notice: "Successfully sent message!"}
    else
      flash.now[:error] = "Cannot send message."
      render :new
    end
  end

  def complete
    @contact = Contact.new
  end
end
