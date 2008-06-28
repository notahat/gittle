require 'test_helper'

class ReposControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:repos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_repo
    assert_difference('Repo.count') do
      post :create, :repo => { }
    end

    assert_redirected_to repo_path(assigns(:repo))
  end

  def test_should_show_repo
    get :show, :id => repos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => repos(:one).id
    assert_response :success
  end

  def test_should_update_repo
    put :update, :id => repos(:one).id, :repo => { }
    assert_redirected_to repo_path(assigns(:repo))
  end

  def test_should_destroy_repo
    assert_difference('Repo.count', -1) do
      delete :destroy, :id => repos(:one).id
    end

    assert_redirected_to repos_path
  end
end
