require 'test_helper'

class ArtikelsControllerTest < ActionController::TestCase
  setup do
    @artikel = artikels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artikels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artikel" do
    assert_difference('Artikel.count') do
      post :create, artikel: { datum: @artikel.datum, name: @artikel.name + "asdf", text: @artikel.text }
    end

    assert_redirected_to artikel_path(assigns(:artikel))
  end

  test "should show artikel" do
    get :show, id: @artikel
    assert_response :success
  end

  test "shouldn't create artikel" do
    assert_no_difference('Artikel.count') do
      post :create, artikel: { name: ""}
    end
  end

  test "should get edit" do
    get :edit, id: @artikel
    assert_response :success
  end

  test "should update artikel" do
    patch :update, id: @artikel, artikel: { datum: @artikel.datum, name: @artikel.name + "asdf", text: @artikel.text }
    assert_redirected_to artikel_path(assigns(:artikel))
  end

  test "should destroy artikel" do
    assert_difference('Artikel.count', -1) do
      delete :destroy, id: @artikel
    end

    assert_redirected_to artikels_path
  end

  test 'should show all artikels in index' do
    get :index
    assert_select "span" do
      assert_select "div", count: Artikel.all.count
    end
  end

  test "artikel name can't be blank " do
    post :update, id: @artikel, artikel: {name: ""}
    assert_response :ok
    assert_select '#error_expl ul' do
      assert_select 'li', "Name can't be blank"
    end
  end

  test 'looks nice submit button is only primary btn' do
    get :new
    assert_select '.btn-primary', 1
  end

  test "index looks nice" do
    get :index
    assert_select 'span div' do
      Artikel.all.each do |artikel|
        assert_select '.jumbotron > h1', artikel.name
      end
    end
  end


  end
