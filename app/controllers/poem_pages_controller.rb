class PoemPagesController < ApplicationController
  before_action :set_poem_page, only: [:show, :edit, :update, :destroy]

  # GET /poem_pages
  # GET /poem_pages.json
  def index
    @poem_pages = PoemPage.all
  end

  # GET /poem_pages/1
  # GET /poem_pages/1.json
  def show
  end

  # GET /poem_pages/new
  def new
    @poem_page = PoemPage.new
  end

  # GET /poem_pages/1/edit
  def edit
  end

  # POST /poem_pages
  # POST /poem_pages.json
  def create
    @poem_page = PoemPage.new(poem_page_params)

    respond_to do |format|
      if @poem_page.save
        format.html { redirect_to @poem_page, notice: 'Poem page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @poem_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @poem_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poem_pages/1
  # PATCH/PUT /poem_pages/1.json
  def update
    respond_to do |format|
      if @poem_page.update(poem_page_params)
        format.html { redirect_to @poem_page, notice: 'Poem page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @poem_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poem_pages/1
  # DELETE /poem_pages/1.json
  def destroy
    @poem_page.destroy
    respond_to do |format|
      format.html { redirect_to poem_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poem_page
      @poem_page = PoemPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poem_page_params
      params.require(:poem_page).permit(:number, :lines)
    end
end
