class PagesController < ApplicationController
   def index
    @biz_offer = BizOffer.new()
    @org_offer = OrgOffer.new()
  end

  def home
  end

  def profile
  end

  def find
  end
end
