class Categorie1sController < ApplicationController
  before_action :set_categorie1, only: [:show, :edit, :update, :destroy]

  # GET /categorie1s
  # GET /categorie1s.json
  def index
    @categorie1s = Categorie1.all
  end

  # GET /categorie1s/1
  # GET /categorie1s/1.json
  def show
  end

  # GET /categorie1s/new
  def new
    @categorie1 = Categorie1.new
  end

  # GET /categorie1s/1/edit
  def edit
  end

  # POST /categorie1s
  # POST /categorie1s.json
  def create
    @categorie1 = Categorie1.new(categorie1_params)

    respond_to do |format|
      if @categorie1.save
        format.html { redirect_to @categorie1, notice: 'Categorie1 was successfully created.' }
        format.json { render :show, status: :created, location: @categorie1 }
      else
        format.html { render :new }
        format.json { render json: @categorie1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorie1s/1
  # PATCH/PUT /categorie1s/1.json
  def update
    respond_to do |format|
      if @categorie1.update(categorie1_params)
        format.html { redirect_to @categorie1, notice: 'Categorie1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @categorie1 }
      else
        format.html { render :edit }
        format.json { render json: @categorie1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie1s/1
  # DELETE /categorie1s/1.json
  def destroy
    @categorie1.destroy
    respond_to do |format|
      format.html { redirect_to categorie1s_url, notice: 'Categorie1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorie1
      @categorie1 = Categorie1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorie1_params
      params.fetch(:categorie1, {})
    end
end
