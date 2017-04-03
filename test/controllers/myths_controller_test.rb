require 'test_helper'

class MythsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myth = myths(:one)
  end

  test "should get index" do
    get myths_url
    assert_response :success
  end

  test "should get new" do
    get new_myth_url
    assert_response :success
  end

  test "should create myth" do
    assert_difference('Myth.count') do
      post myths_url, params: { myth: { author: @myth.author, body: @myth.body, character_id: @myth.character_id, order: @myth.order, publish: @myth.publish, subtitle: @myth.subtitle, title: @myth.title } }
    end

    assert_redirected_to myth_url(Myth.last)
  end

  test "should show myth" do
    get myth_url(@myth)
    assert_response :success
  end

  test "should get edit" do
    get edit_myth_url(@myth)
    assert_response :success
  end

  test "should update myth" do
    patch myth_url(@myth), params: { myth: { author: @myth.author, body: @myth.body, character_id: @myth.character_id, order: @myth.order, publish: @myth.publish, subtitle: @myth.subtitle, title: @myth.title } }
    assert_redirected_to myth_url(@myth)
  end

  test "should destroy myth" do
    assert_difference('Myth.count', -1) do
      delete myth_url(@myth)
    end

    assert_redirected_to myths_url
  end
end
