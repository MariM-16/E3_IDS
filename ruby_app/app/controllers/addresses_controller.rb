class AddressesController < ApplicationController
  before_action :set_address, only: %i[ show edit update destroy ]

  # GET /addresses or /addresses.json
  def index
    @addresses = Address.all
  end

  # GET /addresses/1 or /addresses/1.json
  def show
    @address = Address.find_by(id: params[:id])
    @user = @address.user
  end

  # GET /addresses/new
  def new
    @address = Address.new
    @users = User.all()
  end

  # GET /addresses/1/edit
  def edit
    @addres = Address.find_by(id: params[:id])
    @user = @addres.user
  end

  # POST /addresses or /addresses.json
  def create
    #@address = Address.new(address_params)
    puts(address_params)

    @address = Address.new(user_id: address_params[:user_id].to_i,
                           commune: address_params[:commune],
                           street: address_params[:street],
                           number_address: address_params[:number_address],
                           extra_information: address_params[:extra_information])

    respond_to do |format|
      if @address.save
        format.html { redirect_to address_url(@address), notice: "Address was successfully created." }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresses/1 or /addresses/1.json
  def update
    address_update = @address.update(user_id: address_params[:user_id].to_i,
                           commune: address_params[:commune],
                           street: address_params[:street],
                           number_address: address_params[:number_address],
                           extra_information: address_params[:extra_information])

    respond_to do |format|
      if address_update
        format.html { redirect_to address_url(@address), notice: "Address was successfully updated." }
        format.json { render :show, status: :ok, location: @address }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1 or /addresses/1.json
  def destroy
    @address.destroy

    respond_to do |format|
      format.html { redirect_to addresses_url, notice: "Address was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def address_params
      params.fetch(:address, {})
    end
end
