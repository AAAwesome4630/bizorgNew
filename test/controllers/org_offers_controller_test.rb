require 'test_helper'

class OrgOffersControllerTest < ActionController::TestCase
  setup do
    @org_offer = org_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:org_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create org_offer" do
    assert_difference('OrgOffer.count') do
      post :create, org_offer: { offer: @org_offer.offer, orginization_id: @org_offer.orginization_id }
    end

    assert_redirected_to org_offer_path(assigns(:org_offer))
  end

  test "should show org_offer" do
    get :show, id: @org_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @org_offer
    assert_response :success
  end

  test "should update org_offer" do
    patch :update, id: @org_offer, org_offer: { offer: @org_offer.offer, orginization_id: @org_offer.orginization_id }
    assert_redirected_to org_offer_path(assigns(:org_offer))
  end

  test "should destroy org_offer" do
    assert_difference('OrgOffer.count', -1) do
      delete :destroy, id: @org_offer
    end

    assert_redirected_to org_offers_path
  end
end
