require 'test_helper'

class GodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @god = gods(:one)
  end

  test "should get index" do
    get gods_url
    assert_response :success
  end

  test "should get new" do
    get new_god_url
    assert_response :success
  end

  test "should create god" do
    assert_difference('God.count') do
      post gods_url, params: { god: { children: @god.children, description: @god.description, house: @god.house, name: @god.name, parents: @god.parents, powers: @god.powers, spouse: @god.spouse, stories: @god.stories } }
    end

    assert_redirected_to god_url(God.last)
  end

  test "should show god" do
    get god_url(@god)
    assert_response :success
  end

  test "should get edit" do
    get edit_god_url(@god)
    assert_response :success
  end

  test "should update god" do
    patch god_url(@god), params: { god: { children: @god.children, description: @god.description, house: @god.house, name: @god.name, parents: @god.parents, powers: @god.powers, spouse: @god.spouse, stories: @god.stories } }
    assert_redirected_to god_url(@god)
  end

  test "should destroy god" do
    assert_difference('God.count', -1) do
      delete god_url(@god)
    end

    assert_redirected_to gods_url
  end
end
