require 'test_helper'

class SkillMaturityRangesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_maturity_ranges)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_skill_maturity_range
    assert_difference('SkillMaturityRange.count') do
      post :create, :skill_maturity_range => { }
    end

    assert_redirected_to skill_maturity_range_path(assigns(:skill_maturity_range))
  end

  def test_should_show_skill_maturity_range
    get :show, :id => skill_maturity_ranges(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => skill_maturity_ranges(:one).id
    assert_response :success
  end

  def test_should_update_skill_maturity_range
    put :update, :id => skill_maturity_ranges(:one).id, :skill_maturity_range => { }
    assert_redirected_to skill_maturity_range_path(assigns(:skill_maturity_range))
  end

  def test_should_destroy_skill_maturity_range
    assert_difference('SkillMaturityRange.count', -1) do
      delete :destroy, :id => skill_maturity_ranges(:one).id
    end

    assert_redirected_to skill_maturity_ranges_path
  end
end
