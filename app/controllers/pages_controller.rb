class PagesController < ApplicationController
  def index
    @rsvp = Rsvp.new(:accept => true)
  end

  def rsvp
    redirect_to '/#rsvp'
  end

  def save_rsvp
    rsvp = Rsvp.new(rsvp_params)
    if rsvp.save
      flash[:success] = "Thank you for submitting your rsvp"
    else
      flash[:success] = "There was a problem submitting your rsvp.  Please contact Jeremiah."
    end
    redirect_to root_path
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :accept, :party_size, :song, :address, :email_address, :message)
  end
end
