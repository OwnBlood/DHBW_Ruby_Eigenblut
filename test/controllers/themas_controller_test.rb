require 'test_helper'

class ThemasControllerTest < ActionController::TestCase
  setup do
    @thema = themas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:themas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thema" do
    assert_difference('Thema.count') do
      post :create, thema: { name: @thema.name  + "a"}
    end

    assert_redirected_to thema_path(assigns(:thema))
  end

  test "shouldn't create thema" do
    assert_no_difference('Thema.count') do
      post :create, thema: { name: ""}
    end
  end

  test 'looks nice submit button is only primary btn' do
    get :new
    assert_select '.btn-primary', 1
  end

  test 'should show all themas in index' do
    get :index
    assert_select "tbody" do
      assert_select "tr", count: Thema.all.count
    end
  end

  test "should show thema" do
    get :show, id: @thema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thema
    assert_response :success
  end

  test "should update thema" do
    patch :update, id: @thema, thema: { name: @thema.name + "a"}
    assert_redirected_to thema_path(assigns(:thema))
  end

  test "should destroy thema" do
    assert_difference('Thema.count', -1) do
      delete :destroy, id: @thema
    end

    assert_redirected_to themas_path
  end
end
