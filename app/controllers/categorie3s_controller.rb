class Categorie3sController < ApplicationController
  before_action :set_categorie3, only: [:show, :edit, :update, :destroy]

  # GET /categorie3s
  # GET /categorie3s.json
  def index
    @categorie3s = Categorie3.all
  end

  # GET /categorie3s/1
  # GET /categorie3s/1.json
  def show
  end

  # GET /categorie3s/new
  def new
    @categorie3 = Categorie3.new
  end

  # GET /categorie3s/1/edit
  def edit
  end

  # POST /categorie3s
  # POST /categorie3s.json
  def create
    @categorie3 = Categorie3.new(categorie3_params)

    respond_to do |format|
      if @categorie3.save
        format.html { redirect_to @categorie3, notice: 'Categorie3 was successfully created.' }
        format.json { render :show, status: :created, location: @categorie3 }
      else
        format.html { render :new }
        format.json { render json: @categorie3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorie3s/1
  # PATCH/PUT /categorie3s/1.json
  def update
    respond_to do |format|
      if @categorie3.update(categorie3_params)
        format.html { redirect_to @categorie3, notice: 'Categorie3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @categorie3 }
      else
        format.html { render :edit }
        format.json { render json: @categorie3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie3s/1
  # DELETE /categorie3s/1.json
  def destroy
    @categorie3.destroy
    respond_to do |format|
      format.html { redirect_to categorie3s_url, notice: 'Categorie3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorie3
      @categorie3 = Categorie3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorie3_params
      params.fetch(:categorie3, {})
    end
end
