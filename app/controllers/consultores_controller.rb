class ConsultoresController < ApplicationController
  before_action :set_consultore, only: [:show, :edit, :update, :destroy]

  # GET /consultores
  # GET /consultores.json
  def index
    @consultores = Consultore.all
  end

  # GET /consultores/1
  # GET /consultores/1.json
  def show
  end

  # GET /consultores/new
  def new
    @consultore = Consultore.new
  end

  # GET /consultores/1/edit
  def edit
  end

  # POST /consultores
  # POST /consultores.json
  def create
    @consultore = Consultore.new(consultore_params)

    respond_to do |format|
      if @consultore.save
        format.html { redirect_to @consultore, notice: 'Consultore was successfully created.' }
        format.json { render :show, status: :created, location: @consultore }
      else
        format.html { render :new }
        format.json { render json: @consultore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultores/1
  # PATCH/PUT /consultores/1.json
  def update
    respond_to do |format|
      if @consultore.update(consultore_params)
        format.html { redirect_to @consultore, notice: 'Consultore was successfully updated.' }
        format.json { render :show, status: :ok, location: @consultore }
      else
        format.html { render :edit }
        format.json { render json: @consultore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultores/1
  # DELETE /consultores/1.json
  def destroy
    @consultore.destroy
    respond_to do |format|
      format.html { redirect_to consultores_url, notice: 'Consultore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultore
      @consultore = Consultore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultore_params
      params.require(:consultore).permit(:nome)
    end
end
