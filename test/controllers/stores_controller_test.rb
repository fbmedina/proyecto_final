require 'test_helper'

class StoresControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  # setup do
  #   @store = stores(:one)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:stores)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create store" do
  #   assert_difference('Store.count') do
  #     post :create, store: { cover_photo: @store.cover_photo, description: @store.description, facebook_link: @store.facebook_link, instagram_link: @store.instagram_link, name: @store.name, photo: @store.photo, user_id: @store.user_id }
  #   end

  #   assert_redirected_to store_path(assigns(:store))
  # end

  # test "should show store" do
  #   get :show, id: @store
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @store
  #   assert_response :success
  # end

  # test "should update store" do
  #   patch :update, id: @store, store: { cover_photo: @store.cover_photo, description: @store.description, facebook_link: @store.facebook_link, instagram_link: @store.instagram_link, name: @store.name, photo: @store.photo, user_id: @store.user_id }
  #   assert_redirected_to store_path(assigns(:store))
  # end

  # test "should destroy store" do
  #   assert_difference('Store.count', -1) do
  #     delete :destroy, id: @store
  #   end

  #   assert_redirected_to stores_path
  # end

  test "logged user should create a store" do
    sign_in(users(:logged))
    assert_difference('Store.count') do 
      post :create, store: {name: "La Tiendita"}
    end
    assert_redirected_to store_path(assigns(:store))
  end

  test "not logged user should not create a store" do 
    post :create, store: {name: "La Tiendita 2"}
    assert_response :redirect
  end

  # test "logged user should destroy his own store" do 
  #   sign_in(users(:logged))
  # end
end
