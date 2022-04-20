class AlertsController < ApplicationController
  before_action :set_alert, only: %i[ show edit update destroy ]

  # GET /alerts or /alerts.json
  def index
    @alerts = Alert.all
    string = "You IP address is #{client_ip}"
    # if behind_vpn?
    #   string << " and you are using a VPN"
    # end

    render plain: string
  end

  # GET /alerts/1 or /alerts/1.json
  def show
  end

  # GET /alerts/new
  def new
    @alert = Alert.new
  end

  # GET /alerts/1/edit
  def edit
  end

  # POST /alerts or /alerts.json
  def create
    @alert = Alert.new(alert_params)

    respond_to do |format|
      if @alert.save
        format.html { redirect_to alert_url(@alert), notice: "Alert was successfully created." }
        format.json { render :show, status: :created, location: @alert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alerts/1 or /alerts/1.json
  def update
    respond_to do |format|
      if @alert.update(alert_params)
        format.html { redirect_to alert_url(@alert), notice: "Alert was successfully updated." }
        format.json { render :show, status: :ok, location: @alert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alerts/1 or /alerts/1.json
  def destroy
    @alert.destroy

    respond_to do |format|
      format.html { redirect_to alerts_url, notice: "Alert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def make_abstract_request(client_ip)
    uri = URI('https://ipgeolocation.abstractapi.com/v1/?api_key=a1d797d3953c46768d30534352b89d12&ip_address=#{client_ip}')
  
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  
    request =  Net::HTTP::Get.new(uri)
  
    response = http.request(request)
    puts "Status code: #{ response.code }"
    puts "Response body: #{ response.body }"
  rescue StandardError => error
    puts "Error (#{ error.message })"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert
      @alert = Alert.find(params[:id])
    end

    #Use callback to get the user's ip address
    def client_ip
      request.remote_ip
    end


    # Only allow a list of trusted parameters through.
    def alert_params
      params.require(:alert).permit(:alert_text, :alert_type, :contact_id, :user_id)
    end
end
