require 'test_helper'

class XmlsControllerTest < ActionController::TestCase
  setup do
    @xml = xmls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xmls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xml" do
    assert_difference('Xml.count') do
      post :create, xml: { key_access: @xml.key_access, xml_text: @xml.xml_text }
    end

    assert_redirected_to xml_path(assigns(:xml))
  end

  test "should show xml" do
    get :show, id: @xml
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xml
    assert_response :success
  end

  test "should update xml" do
    patch :update, id: @xml, xml: { key_access: @xml.key_access, xml_text: @xml.xml_text }
    assert_redirected_to xml_path(assigns(:xml))
  end

  test "should destroy xml" do
    assert_difference('Xml.count', -1) do
      delete :destroy, id: @xml
    end

    assert_redirected_to xmls_path
  end
end
