require 'test_helper'

class BizOffersControllerTest < ActionController::TestCase
  setup do
    @biz_offer = biz_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biz_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biz_offer" do
    assert_difference('BizOffer.count') do
      post :create, biz_offer: { business_id: @biz_offer.business_id, offer: @biz_offer.offer, percentage: @biz_offer.percentage, requirement: @biz_offer.requirement }
    end

    assert_redirected_to biz_offer_path(assigns(:biz_offer))
  end

  test "should show biz_offer" do
    get :show, id: @biz_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biz_offer
    assert_response :success
  end

  test "should update biz_offer" do
    patch :update, id: @biz_offer, biz_offer: { business_id: @biz_offer.business_id, offer: @biz_offer.offer, percentage: @biz_offer.percentage, requirement: @biz_offer.requirement }
    assert_redirected_to biz_offer_path(assigns(:biz_offer))
  end

  test "should destroy biz_offer" do
    assert_difference('BizOffer.count', -1) do
      delete :destroy, id: @biz_offer
    end

    assert_redirected_to biz_offers_path
  end
end
