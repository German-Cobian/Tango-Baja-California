class Admin::ActivitiesController < AdminController
  before_action :set_admin_activity, only: %i[ show edit update destroy ]

  # GET /admin/activities or /admin/activities.json
  def index
    @admin_activities = Activity.all
  end

  # GET /admin/activities/1 or /admin/activities/1.json
  def show
    @admin_activity = Activity.find(params[:id])
  end

  # GET /admin/activities/new
  def new
    @admin_activity = Activity.new
  end

  # GET /admin/activities/1/edit
  def edit
  end

  # POST /admin/activities or /admin/activities.json
  def create
    @admin_activity = Activity.new(admin_activity_params)

    respond_to do |format|
      if @admin_activity.save
        format.html { redirect_to admin_activity_url(@admin_activity), notice: "La Actividad ha sido creada." }
        format.json { render :show, status: :created, location: @admin_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/activities/1 or /admin/activities/1.json
  def update
    @admin_activity = Activity.find(params[:id])
    if @admin_activity.update(admin_activity_params.reject { |k| k["images"] })
      if admin_activity_params["images"]
        admin_activity_params["images"].each do |image|
          @admin_activity.images.attach(image)
        end
      end
      redirect_to admin_activities_path, notice: "La Actividad ha sido modificada."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /admin/activities/1 or /admin/activities/1.json
  def destroy
    @admin_activity.destroy

    respond_to do |format|
      format.html { redirect_to admin_activities_url, notice: "La Actividad ha sido eliminada." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_activity
      @admin_activity = Activity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_activity_params
      params.require(:activity).permit(:category, :title, :description, :time, :place, images: [])
    end
end
