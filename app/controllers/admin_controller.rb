class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def index
    @schools = School.all
  end

end


 