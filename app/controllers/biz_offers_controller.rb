class BizOffersController < ApplicationController
  before_action :set_biz_offer, only: [:show, :edit, :update, :destroy]

  # GET /biz_offers
  # GET /biz_offers.json
  def index
    @biz_offers = BizOffer.all
  end

  # GET /biz_offers/1
  # GET /biz_offers/1.json
  def show
  end

  # GET /biz_offers/new
  def new
    @biz_offer = BizOffer.new
  end

  # GET /biz_offers/1/edit
  def edit
  end

  # POST /biz_offers
  # POST /biz_offers.json
  def create
    @biz_offer = BizOffer.new(biz_offer_params)

    respond_to do |format|
      if @biz_offer.save
        format.html { redirect_to @biz_offer, notice: 'Biz offer was successfully created.' }
        format.json { render :show, status: :created, location: @biz_offer }
      else
        format.html { render :new }
        format.json { render json: @biz_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biz_offers/1
  # PATCH/PUT /biz_offers/1.json
  def update
    respond_to do |format|
      if @biz_offer.update(biz_offer_params)
        format.html { redirect_to @biz_offer, notice: 'Biz offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @biz_offer }
      else
        format.html { render :edit }
        format.json { render json: @biz_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biz_offers/1
  # DELETE /biz_offers/1.json
  def destroy
    @biz_offer.destroy
    respond_to do |format|
      format.html { redirect_to biz_offers_url, notice: 'Biz offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biz_offer
      @biz_offer = BizOffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biz_offer_params
      params.require(:biz_offer).permit(:offer, :business_id)
    end
end
