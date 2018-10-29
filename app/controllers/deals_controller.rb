class DealsController < ApplicationController
  before_filter :authenticate_business!, only: [:create, :new, :edit, :update]

  # GET /deals
  # GET /deals.json
  def index
    @deals = Deal.all
  end

  # GET /deals/1
  # GET /deals/1.json
  def show
  end

  # GET /deals/new
  def new
    @deal = Deal.new
    if params[:business_id].present?
        @business_status = true
        @business = Business.find_by_id(params[:business_id])
    elsif params[:orginization_id].present?
        @orginization_status = true
        @orginization = Orginization.find_by_id(params[:orginization_id])
    end
  end

  # GET /deals/1/edit
  def edit
  end

  # POST /deals
  # POST /deals.json
  def create
      
    @deal = Deal.new(deal_params)
    if orginization_signed_in?
      @deal.org_accepted = true
    elsif business_signed_in?
      @deal.biz_accepted = true
    end

    respond_to do |format|
      if @deal.save
        format.html { redirect_to @deal, notice: 'Deal was successfully created.' }
        format.json { render :show, status: :created, location: @deal }
      else
        format.html { render :new }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deals/1
  # PATCH/PUT /deals/1.json
  def update
    respond_to do |format|
      if @deal.update(deal_params)
        format.html { redirect_to @deal, notice: 'Deal was successfully updated.' }
        format.json { render :show, status: :ok, location: @deal }
      else
        format.html { render :edit }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deals/1
  # DELETE /deals/1.json
  def destroy
    @deal.destroy
    respond_to do |format|
      format.html { redirect_to deals_url, notice: 'Deal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
    def authenticate_business!
      if(orginization_signed_in?)
          return true
      end
      super
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deal
      @deal = Deal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deal_params
      params.require(:deal).permit(:business_id, :originization_id, :percentage, :requirement, :offer)
    end
end
