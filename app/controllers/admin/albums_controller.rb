class Admin::AlbumsController < AdminController
  before_action :set_admin_album, only: %i[ show edit update destroy ]

  # GET /admin/albums or /admin/albums.json
  def index
    @admin_album = Album.all
  end

  # GET /admin/albums/1 or /admin/albums/1.json
  def show
  end

  # GET /admin/albums/new
  def new
    @admin_album = Album.new
  end

  # GET /admin/albums/1/edit
  def edit
  end

  # POST /admin/albums or /admin/albums.json
  def create
    @admin_album = Album.new(admin_album_params)

    respond_to do |format|
      if @admin_album.save
        format.html { redirect_to admin_album_url(@admin_album), notice: "El Album ha sido creado." }
        format.json { render :show, status: :created, location: @admin_album }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/albums/1 or /admin/albums/1.json
  def update
    respond_to do |format|
      if @admin_album.update(admin_album_params)
        format.html { redirect_to admin_album_url(@admin_album), notice: "El Album ha sido modificada." }
        format.json { render :show, status: :ok, location: @admin_album }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/albums/1 or /admin/albums/1.json
  def destroy
    @admin_album.destroy

    respond_to do |format|
      format.html { redirect_to admin_albums_url, notice: "El Album ha sido eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_album
      @admin_album = Album.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_album_params
      params.require(:album).permit(:topic, :description)
    end
end