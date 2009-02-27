require 'test_helper'

class SkillMaturityModelsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_maturity_models)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_skill_maturity_model
    assert_difference('SkillMaturityModel.count') do
      post :create, :skill_maturity_model => { }
    end

    assert_redirected_to skill_maturity_model_path(assigns(:skill_maturity_model))
  end

  def test_should_show_skill_maturity_model
    get :show, :id => skill_maturity_models(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => skill_maturity_models(:one).id
    assert_response :success
  end

  def test_should_update_skill_maturity_model
    put :update, :id => skill_maturity_models(:one).id, :skill_maturity_model => { }
    assert_redirected_to skill_maturity_model_path(assigns(:skill_maturity_model))
  end

  def test_should_destroy_skill_maturity_model
    assert_difference('SkillMaturityModel.count', -1) do
      delete :destroy, :id => skill_maturity_models(:one).id
    end

    assert_redirected_to skill_maturity_models_path
  end
end
