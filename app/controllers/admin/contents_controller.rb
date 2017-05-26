class Admin::ContentsController < Admin::ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  # GET /admin/contents
  # GET /admin/contents.json
  def index
    @contents = Content.all
  end

  # GET /admin/contents/1
  # GET /admin/contents/1.json
  def show
  end

  # GET /admin/contents/new
  def new
    @content = Content.new
  end

  # GET /admin/contents/1/edit
  def edit
  end

  # POST /admin/contents
  # POST /admin/contents.json
  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to [:admin, @content], notice: 'Content was successfully created.' }
        format.json { render action: 'show', status: :created, location: @content }
      else
        format.html { render action: 'new' }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/contents/1
  # PATCH/PUT /admin/contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to [:admin, @content], notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contents/1
  # DELETE /admin/contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to admin_contents_url, notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:name, :email, :tel, :body)
    end
end
