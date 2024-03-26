class ApplicationController < ActionController::Base
  before_action :redirect_to_profile_form, if: -> { admin_signed_in? && current_admin.name.blank? }

  protected
  def redirect_to_profile_form
    redirect_to new_admin_profile_path
  end
end
