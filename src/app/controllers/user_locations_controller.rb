class UserLocationsController < ApplicationController
  # before_action :get_user_profile
  before_action :set_user_location, only: %i[ show edit update destroy ]

  # GET /user_locations or /user_locations.json
  def index
    # @user_locations = @user_profile.user_locations
    @user_locations = UserLocation.user_locations
  end

  # GET /user_locations/1 or /user_locations/1.json
  def show
  end

  # GET /user_locations/new
  def new
    #Passing userID from user profiles to under locations for new user locations
    @user_location = UserLocation.user_locations.build
  end

  # GET /user_locations/1/edit
  def edit
  end

  # POST /user_locations or /user_locations.json
  def create
    #Passing userID from user profiles to user locations
    @user_location = UserLocation.user_locations.build(user_location_params)
    #@user_location = UserLocation.new(user_location_params)

    respond_to do |format|
      if @user_location.save
        format.html { redirect_to user_locations_path, notice: "User location was successfully created." }
        format.json { render :show, status: :created, location: @user_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_locations/1 or /user_locations/1.json
  def update
    respond_to do |format|
      if @user_location.update(user_location_params)
        format.html { redirect_to user_location_path, notice: "User location was successfully updated." }
        format.json { render :show, status: :ok, location: @user_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_locations/1 or /user_locations/1.json
  def destroy
    @user_location.destroy

    respond_to do |format|
      format.html { redirect_to user_locations_path, notice: "User location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # def get_user_profile
    #   @user_profile = UserProfile.find(params[:userID])
    # end
    # Use callbacks to share common setup or constraints between actions.
    def set_user_location
      @user_location = UserLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_location_params
      params.require(:user_location).permit(:userID, :address1, :address2, :city, :state, :zipcode)
    end
end
