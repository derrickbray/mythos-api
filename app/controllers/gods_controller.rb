class GodsController < ApplicationController
  before_action :set_god, only: [:show, :edit, :update, :destroy]

  # GET /gods
  # GET /gods.json
  def index
    @gods = God.all
  end

  # GET /gods/1
  # GET /gods/1.json
  def show
  end

  # GET /gods/new
  def new
    @god = God.new
  end

  # GET /gods/1/edit
  def edit
  end

  # POST /gods
  # POST /gods.json
  def create
    @god = God.new(god_params)

    respond_to do |format|
      if @god.save
        format.html { redirect_to @god, notice: 'God was successfully created.' }
        format.json { render :show, status: :created, location: @god }
      else
        format.html { render :new }
        format.json { render json: @god.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gods/1
  # PATCH/PUT /gods/1.json
  def update
    respond_to do |format|
      if @god.update(god_params)
        format.html { redirect_to @god, notice: 'God was successfully updated.' }
        format.json { render :show, status: :ok, location: @god }
      else
        format.html { render :edit }
        format.json { render json: @god.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gods/1
  # DELETE /gods/1.json
  def destroy
    @god.destroy
    respond_to do |format|
      format.html { redirect_to gods_url, notice: 'God was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_god
      @god = God.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def god_params
      params.require(:god).permit(:name)
    end
end
