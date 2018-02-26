class Categorie2sController < ApplicationController
  before_action :set_categorie2, only: [:show, :edit, :update, :destroy]

  # GET /categorie2s
  # GET /categorie2s.json
  def index
    @categorie2s = Categorie2.all
  end

  # GET /categorie2s/1
  # GET /categorie2s/1.json
  def show
  end

  # GET /categorie2s/new
  def new
    @categorie2 = Categorie2.new
  end

  # GET /categorie2s/1/edit
  def edit
  end

  # POST /categorie2s
  # POST /categorie2s.json
  def create
    @categorie2 = Categorie2.new(categorie2_params)

    respond_to do |format|
      if @categorie2.save
        format.html { redirect_to @categorie2, notice: 'Categorie2 was successfully created.' }
        format.json { render :show, status: :created, location: @categorie2 }
      else
        format.html { render :new }
        format.json { render json: @categorie2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorie2s/1
  # PATCH/PUT /categorie2s/1.json
  def update
    respond_to do |format|
      if @categorie2.update(categorie2_params)
        format.html { redirect_to @categorie2, notice: 'Categorie2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @categorie2 }
      else
        format.html { render :edit }
        format.json { render json: @categorie2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie2s/1
  # DELETE /categorie2s/1.json
  def destroy
    @categorie2.destroy
    respond_to do |format|
      format.html { redirect_to categorie2s_url, notice: 'Categorie2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorie2
      @categorie2 = Categorie2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorie2_params
      params.fetch(:categorie2, {})
    end
end
