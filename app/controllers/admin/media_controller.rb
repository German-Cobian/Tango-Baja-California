class Admin::MediaController < AdminController
  before_action :set_admin_medium, only: %i[ show edit update destroy ]

  # GET /admin/media or /admin/media.json
  def index
    @admin_medium = Medium.all
  end

  # GET /admin/media/1 or /admin/media/1.json
  def show
  end

  # GET /admin/media/new
  def new
    @admin_medium = Medium.new(album_id: params[:album_id])
  end

  # GET /admin/media/1/edit
  def edit
  end

  # POST /admin/media or /admin/media.json
  def create
    @admin_medium = Medium.new(admin_medium_params)

    respond_to do |format|
      if @admin_medium.save
        format.html { redirect_to admin_medium_url(@admin_medium), notice: "El Articulo ha sido creado." }
        format.json { render :show, status: :created, location: @admin_medium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/media/1 or /admin/media/1.json
  def update
    respond_to do |format|
      if @admin_medium.update(admin_medium_params)
        format.html { redirect_to admin_medium_url(@admin_medium), notice: "El Articulo ha sido modificada." }
        format.json { render :show, status: :ok, location: @admin_medium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/media/1 or /admin/media/1.json
  def destroy
    @admin_medium.destroy

    respond_to do |format|
      format.html { redirect_to admin_albums_url, notice: "El Articulo ha sido eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_medium
      @admin_medium = Medium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_medium_params
      params.require(:medium).permit(:title, :description, :album_id, :image, :file)
    end
end