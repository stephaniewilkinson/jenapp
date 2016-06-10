require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { acne: @client.acne, address: @client.address, age: @client.age, aging: @client.aging, birthday: @client.birthday, clogged_pores: @client.clogged_pores, dark_circles: @client.dark_circles, dark_spots: @client.dark_spots, dehydration: @client.dehydration, dullness: @client.dullness, egc: @client.egc, email: @client.email, excess_oil: @client.excess_oil, fine_lines: @client.fine_lines, firmness: @client.firmness, gwp: @client.gwp, large_pores: @client.large_pores, name: @client.name, notes: @client.notes, phone: @client.phone, sensitive: @client.sensitive, shipping_address: @client.shipping_address, sun_damage: @client.sun_damage, visit_date: @client.visit_date }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { acne: @client.acne, address: @client.address, age: @client.age, aging: @client.aging, birthday: @client.birthday, clogged_pores: @client.clogged_pores, dark_circles: @client.dark_circles, dark_spots: @client.dark_spots, dehydration: @client.dehydration, dullness: @client.dullness, egc: @client.egc, email: @client.email, excess_oil: @client.excess_oil, fine_lines: @client.fine_lines, firmness: @client.firmness, gwp: @client.gwp, large_pores: @client.large_pores, name: @client.name, notes: @client.notes, phone: @client.phone, sensitive: @client.sensitive, shipping_address: @client.shipping_address, sun_damage: @client.sun_damage, visit_date: @client.visit_date }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
