class Admin::ActivityCategoriesController < Admin::ApplicationController
  before_action :set_activity_category, only: [:show, :edit, :update, :destroy]

  # GET /admin/activity_categories
  # GET /admin/activity_categories.json
  def index
    @activity_categories = ActivityCategory.tree
  end

  # GET /admin/activity_categories/1
  # GET /admin/activity_categories/1.json
  def show
  end

  # GET /admin/activity_categories/new
  def new
    @activity_category = ActivityCategory.new
  end

  # GET /admin/activity_categories/1/edit
  def edit
  end

  # POST /admin/activity_categories
  # POST /admin/activity_categories.json
  def create
    @activity_category = ActivityCategory.new(activity_category_params)

    respond_to do |format|
      if @activity_category.save
        format.html { redirect_to [:admin, @activity_category], notice: 'Activity category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/activity_categories/1
  # PATCH/PUT /admin/activity_categories/1.json
  def update
    respond_to do |format|
      if @activity_category.update(activity_category_params)
        format.html { redirect_to [:admin, @activity_category], notice: 'Activity category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/activity_categories/1
  # DELETE /admin/activity_categories/1.json
  def destroy
    @activity_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_activity_categories_url, notice: 'Activity category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_category
      @activity_category = ActivityCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_category_params
      params.require(:activity_category).permit(:name, :custom_order, :parent_id, :brief, :published, :cite_key)
    end
end
