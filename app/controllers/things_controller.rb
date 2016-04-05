class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:create, :new]
  # GET /things
  # GET /things.json
  def index
    @things = Thing.order("votes_count DESC")
  end

  # GET /things/1
  # GET /things/1.json
  def show
    @thing.votes.create(user: current_user) # Create Vote with URL paramaters & current_user
    redirect_to @thing.link
  end

  # GET /things/new
  def new
    @thing = Thing.new
  end

  # GET /things/1/edit
  def edit
  end

  # POST /things
  # POST /things.json
  def create
    @thing = current_user.things.new(thing_params) # @thing = Thing.new(thing_params)
    if @thing.save
      redirect_to root_path
    else
      render :new
    end
  end

  # PATCH/PUT /things/1
  # PATCH/PUT /things/1.json
  def update
    respond_to do |format|
      if @thing.update(thing_params)
        format.html { redirect_to @thing, notice: 'Thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @thing }
      else
        format.html { render :edit }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /things/1
  # DELETE /things/1.json
  def destroy
    @thing.destroy
    respond_to do |format|
      format.html { redirect_to things_url, notice: 'Thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing
      @thing = Thing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thing_params
      params.require(:thing).permit(:title, :summary, :link)
    end
end
