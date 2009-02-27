require 'test_helper'

class CompetenceAreasControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:competence_areas)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_competence_area
    assert_difference('CompetenceArea.count') do
      post :create, :competence_area => { }
    end

    assert_redirected_to competence_area_path(assigns(:competence_area))
  end

  def test_should_show_competence_area
    get :show, :id => competence_areas(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => competence_areas(:one).id
    assert_response :success
  end

  def test_should_update_competence_area
    put :update, :id => competence_areas(:one).id, :competence_area => { }
    assert_redirected_to competence_area_path(assigns(:competence_area))
  end

  def test_should_destroy_competence_area
    assert_difference('CompetenceArea.count', -1) do
      delete :destroy, :id => competence_areas(:one).id
    end

    assert_redirected_to competence_areas_path
  end
end
