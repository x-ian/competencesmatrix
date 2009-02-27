require 'test_helper'

class CompetenceModelsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:competence_models)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_competence_model
    assert_difference('CompetenceModel.count') do
      post :create, :competence_model => { }
    end

    assert_redirected_to competence_model_path(assigns(:competence_model))
  end

  def test_should_show_competence_model
    get :show, :id => competence_models(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => competence_models(:one).id
    assert_response :success
  end

  def test_should_update_competence_model
    put :update, :id => competence_models(:one).id, :competence_model => { }
    assert_redirected_to competence_model_path(assigns(:competence_model))
  end

  def test_should_destroy_competence_model
    assert_difference('CompetenceModel.count', -1) do
      delete :destroy, :id => competence_models(:one).id
    end

    assert_redirected_to competence_models_path
  end
end
