class PagesController < ApplicationController
  
   
  def index
    @biz_offer = BizOffer.new()
    @org_offer = OrgOffer.new()
  end

  def home
  end

  def business
      @biz_offers = BizOffer.where("business_id = ?", params[:id]).all
      @business = Business.find_by_id(params[:id])
      if(orginization_signed_in?)
        require 'uri'
          require 'net/http'
          require 'json'
          
          url = URI("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=Washington,DC&destinations=New+York+City,NY&key=AIzaSyA3s_5L5B0UKp8aiHQxrF3OwSnUftXoc1c")
          
          http = Net::HTTP.new(url.host, url.port)
          http.use_ssl = true
          
          request = Net::HTTP::Get.new(url)
          response = http.request(request)
          puts response.read_body
          json_response = JSON.parse(response.read_body)
          puts json_response["rows"][0]["elements"][0]["distance"]["value"]
      end
  end
  
  def orginization
    @orginization = Orginization.find_by_id(params[:id])
  end

  def find
      
    term = params[:search]
    @businesses = Business.search(term)
    @orginizations = Orginization.search(term)
    
  end
end
 