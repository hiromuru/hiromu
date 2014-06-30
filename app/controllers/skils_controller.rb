class SkilsController < ApplicationController
  before_action :set_skil, only: [:edit, :update, :destroy]

  # GET /skils
  # GET /skils.jsonrequire "skils_controller"
  
  def index
    @skils = Skil.all
    @sk = Skil.find(:all, :conditions => {:sors => "skill"})
    @sksize = @sk.size
    @sf = Skil.find(:all, :conditions => {:sors => "soft"})
  end

  # GET /skils/1
  # GET /skils/1.json
  def show
    @skil = Skil.find_by_name(params[:title])
    @ex = @skil.exams.order("c_at DESC")
    p = @skil.id
    @next = Skil.find(:first, :conditions => ["id > ?", p])
    @prev = Skil.find(:last, :conditions => ["id < ?", p])
  end

  # GET /skils/new
  def new
    @skil = Skil.new
    @skil.build_image
  end

  # GET /skils/1/edit
  def edit
    @skil.build_image
  end

  # POST /skils
  # POST /skils.json
  def create
    @skil = Skil.new(skil_params)

    respond_to do |format|
      if @skil.save
        format.html { redirect_to @skil, notice: 'Skil was successfully created.' }
        format.json { render action: 'show', status: :created, location: @skil }
      else
        format.html { render action: 'new' }
        format.json { render json: @skil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skils/1
  # PATCH/PUT /skils/1.json
  def update
    respond_to do |format|
      if @skil.update(skil_params)
        format.html { redirect_to @skil, notice: 'Skil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @skil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skils/1
  # DELETE /skils/1.json
  def destroy
    @skil.destroy
    respond_to do |format|
      format.html { redirect_to skils_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skil
      @skil = Skil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skil_params
      params.require(:skil).permit(:name, :level, :sors, :discription, :image_attributes => [:image, :_destroy, :id, :parent, :parent_id, :parent_type, :parent_attributes ])
    end
end
