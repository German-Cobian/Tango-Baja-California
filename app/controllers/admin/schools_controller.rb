class Admin::SchoolsController < AdminController
  before_action :set_admin_school, only: %i[ edit update]

  def edit

  end

  def update
    respond_to do |format|
      if @admin_school.update(admin_school_params)
        format.html { redirect_to admin_root_path, notice: "La informacion ha sido modificada." }
        format.json { render :show, status: :ok, location: @admin_school }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_school.errors, status: :unprocessable_entity }
      end
    end
  end
  private

  def set_admin_school
    @admin_school = School.find(params[:id])
  end

  def admin_school_params
    params.require(:school).permit(:description, :bio_jose, :bio_cris, :phone, :email, :whatsapp, :facebook, :instagram, :webpage)
  end
end