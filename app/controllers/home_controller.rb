class HomeController < ApplicationController

  def index
    @schools = School.all
  end

  private

  def school_params
    params.require(:school).permit(:description, :bio_jose, :bio_cris, :phone, :email, :whatsapp, :facebook, :instagram, :webpage)
  end
end