class OrgOffersController < ApplicationController
  before_action :set_org_offer, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_orginization!, only: [:create, :new, :edit, :update]

  # GET /org_offers
  # GET /org_offers.json
  def index
    @org_offers = OrgOffer.all
  end

  # GET /org_offers/1
  # GET /org_offers/1.json
  def show
  end

  # GET /org_offers/new
  def new
    @org_offer = OrgOffer.new
  end

  # GET /org_offers/1/edit
  def edit
  end

  # POST /org_offers
  # POST /org_offers.json
  def create
    @org_offer = OrgOffer.new(org_offer_params)

    respond_to do |format|
      if @org_offer.save
        format.html { redirect_to @org_offer, notice: 'Org offer was successfully created.' }
        format.json { render :show, status: :created, location: @org_offer }
      else
        format.html { render :new }
        format.json { render json: @org_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /org_offers/1
  # PATCH/PUT /org_offers/1.json
  def update
    respond_to do |format|
      if @org_offer.update(org_offer_params)
        format.html { redirect_to @org_offer, notice: 'Org offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @org_offer }
      else
        format.html { render :edit }
        format.json { render json: @org_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_offers/1
  # DELETE /org_offers/1.json
  def destroy
    @org_offer.destroy
    respond_to do |format|
      format.html { redirect_to org_offers_url, notice: 'Org offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_org_offer
      @org_offer = OrgOffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def org_offer_params
      params.require(:org_offer).permit(:orginizations_id, :members, :percentage, :offer)
    end
end
