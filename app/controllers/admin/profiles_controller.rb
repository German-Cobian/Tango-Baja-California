class Admin::ProfilesController < AdminController
  skip_before_action :redirect_to_profile_form

  def new
  
  end

  def edit
    
  end

  def update
    @admin_profile = Admin.find(params[:id])
    if admin_profile_params[:name].present? && current_admin.update(admin_profile_params)
      flash[:notice] = 'Profile successfully updated'
      redirect_to admin_root_path
    else
      flash[:alert] = if admin_profile_params[:name].blank?
                        'please set a username'
                      else
                        current_users.errors.full_messages.join(',')
                      end
      redirect_to new_admin_profile_path
    end
  end

  private

  def admin_profile_params
    params.require(:admin).permit(:name, :bio, :avatar)
  end
end