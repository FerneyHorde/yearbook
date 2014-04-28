class YbClassesController < ApplicationController
  before_action :set_yb_class, only: [:show, :edit, :update, :destroy]

  # GET /yb_classes
  # GET /yb_classes.json
  def index
    @yb_classes = YbClass.all
  end

  # GET /yb_classes/1
  # GET /yb_classes/1.json
  def show
  end

  # GET /yb_classes/new
  def new
    @yb_class = YbClass.new
  end

  # GET /yb_classes/1/edit
  def edit
  end

  # POST /yb_classes
  # POST /yb_classes.json
  def create
    @yb_class = YbClass.new(yb_class_params)

    respond_to do |format|
      if @yb_class.save
        format.html { redirect_to @yb_class, notice: 'Yb class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @yb_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @yb_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yb_classes/1
  # PATCH/PUT /yb_classes/1.json
  def update
    respond_to do |format|
      if @yb_class.update(yb_class_params)
        format.html { redirect_to @yb_class, notice: 'Yb class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @yb_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yb_classes/1
  # DELETE /yb_classes/1.json
  def destroy
    @yb_class.destroy
    respond_to do |format|
      format.html { redirect_to yb_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yb_class
      @yb_class = YbClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yb_class_params
      params.require(:yb_class).permit(:name, :desc)
    end
end
