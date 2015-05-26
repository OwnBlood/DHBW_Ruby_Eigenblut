require 'test_helper'

class AutorsControllerTest < ActionController::TestCase
  setup do
    @autor = autors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autors)
  end

  test 'should show all autors in index' do
    get :index
    assert_select "tbody" do
      assert_select "tr", count: Autor.all.count
    end
  end

  test 'looks nice as table' do
    get :index
    assert_select "thead"
  end

  test 'looks nice submit button is only primary btn' do
    get :new
    assert_select '.btn-primary', 1
  end

  test 'has form' do
    get :new
    assert_select "form"
  end



  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autor" do
    assert_difference('Autor.count') do
      post :create, autor: { name: @autor.name }
    end

    assert_redirected_to autor_path(assigns(:autor))
  end

  test "should show autor" do
    get :show, id: @autor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autor
    assert_response :success
  end

  test "should update autor" do
    patch :update, id: @autor, autor: { name: @autor.name }
    assert_redirected_to autor_path(assigns(:autor))
  end

  test "should destroy autor" do
    assert_difference('Autor.count', -1) do
      delete :destroy, id: @autor
    end

    assert_redirected_to autors_path
  end
end
