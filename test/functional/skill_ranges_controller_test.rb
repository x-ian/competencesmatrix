require 'test_helper'

class CompetenceRangesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:competence_ranges)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_competence_range
    assert_difference('CompetenceRange.count') do
      post :create, :competence_range => { }
    end

    assert_redirected_to competence_range_path(assigns(:competence_range))
  end

  def test_should_show_competence_range
    get :show, :id => competence_ranges(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => competence_ranges(:one).id
    assert_response :success
  end

  def test_should_update_competence_range
    put :update, :id => competence_ranges(:one).id, :competence_range => { }
    assert_redirected_to competence_range_path(assigns(:competence_range))
  end

  def test_should_destroy_competence_range
    assert_difference('CompetenceRange.count', -1) do
      delete :destroy, :id => competence_ranges(:one).id
    end

    assert_redirected_to competence_ranges_path
  end
end
