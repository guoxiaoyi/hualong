class En::ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  # GET /en/contents
  # GET /en/contents.json
  def index
    @contents = Content.all
  end

  # GET /en/contents/1
  # GET /en/contents/1.json
  def show
  end

  # GET /en/contents/new
  def new
    @content = Content.new
  end

  # GET /en/contents/1/edit
  def edit
  end

  # POST /en/contents
  # POST /en/contents.json
  def create
    @content = Content.new(content_params)
    respond_to do |format|
      if @content.save
        format.html { redirect_to [:en, @content], notice: 'Content was successfully created.' }
        format.js{ render :create_success }
        format.json { render action: 'show', status: :created, location: @content }
      else
        format.html { render action: 'new' }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /en/contents/1
  # PATCH/PUT /en/contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to [:en, @content], notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /en/contents/1
  # DELETE /en/contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to en_contents_url, notice: 'Content was successfully destroyed.' }
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
