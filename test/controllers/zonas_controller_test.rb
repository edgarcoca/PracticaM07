require 'test_helper'

class ZonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zona = zonas(:one)
  end

  test "should get index" do
    get zonas_url
    assert_response :success
  end

  test "should get new" do
    get new_zona_url
    assert_response :success
  end

  test "should create zona" do
    assert_difference('Zona.count') do
      post zonas_url, params: { zona: { clima: @zona.clima, humitat: @zona.humitat, nom: @zona.nom, temperatura: @zona.temperatura } }, xhr: true
    end

    assert_equal "text/javascript", @response.content_type
  end

  test "should show zona" do
    get zona_url(@zona)
    assert_response :success
  end

  test "should get edit" do
    get edit_zona_url(@zona)
    assert_response :success
  end

  test "should update zona" do
    patch zona_url(@zona), params: { zona: { clima: @zona.clima, humitat: @zona.humitat, nom: @zona.nom, temperatura: @zona.temperatura } }, xhr: true
    assert_equal "text/javascript", @response.content_type
  end
=begin
  test "should destroy zona" do
    assert_difference('Zona.count', -1) do
      delete zona_url(@zona.id), xhr: true
    end

     assert_equal "text/javascript", @response.content_type
  end
=end
end
