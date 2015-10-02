require 'test_helper'

class RentalUnitsControllerTest < ActionController::TestCase
  setup do
    @rental_unit = rental_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create rental_unit" do
    assert_difference('RentalUnit.count') do
      post :create, params: { rental_unit: { address: @rental_unit.address, bathrooms: @rental_unit.bathrooms, price_cents: @rental_unit.price_cents, rooms: @rental_unit.rooms, user_id: @rental_unit.user_id } }
    end

    assert_response 201
  end

  test "should show rental_unit" do
    get :show, params: { id: @rental_unit }
    assert_response :success
  end

  test "should update rental_unit" do
    patch :update, params: { id: @rental_unit, rental_unit: { address: @rental_unit.address, bathrooms: @rental_unit.bathrooms, price_cents: @rental_unit.price_cents, rooms: @rental_unit.rooms, user_id: @rental_unit.user_id } }
    assert_response 200
  end

  test "should destroy rental_unit" do
    assert_difference('RentalUnit.count', -1) do
      delete :destroy, params: { id: @rental_unit }
    end

    assert_response 204
  end
end
