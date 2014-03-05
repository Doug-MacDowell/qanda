class CollabsController < ApplicationController
  before_action :set_collab, only: [:show, :edit, :update, :destroy]

  # GET /collabs
  # GET /collabs.json
  def index
    @collabs = Collab.all
  end

  # GET /collabs/1
  # GET /collabs/1.json
  def show
  end

  # GET /collabs/new
  def new
    @collab = Collab.new
  end

  # GET /collabs/1/edit
  def edit
  end

  # POST /collabs
  # POST /collabs.json
  def create
    @collab = Collab.new(collab_params)

    respond_to do |format|
      if @collab.save
        format.html { redirect_to @collab, notice: 'Question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @collab }
      else
        format.html { render action: 'new' }
        format.json { render json: @collab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collabs/1
  # PATCH/PUT /collabs/1.json
  def update
    respond_to do |format|
      if @collab.update(collab_params)
   #  if @collab.update_attributes(params[:collab])
   #     @collab.users |= [current_user]
        format.html { redirect_to @collab, notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @collab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collabs/1
  # DELETE /collabs/1.json
  def destroy
    @collab.destroy
    respond_to do |format|
      format.html { redirect_to collabs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collab
      @collab = Collab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collab_params
      params.require(:collab).permit(:question, :answer)
    end
end
