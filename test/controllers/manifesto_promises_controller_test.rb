require 'test_helper'

class ManifestoPromisesControllerTest < ActionController::TestCase
  setup do
    @manifesto_promise = manifesto_promises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manifesto_promises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manifesto_promise" do
    assert_difference('ManifestoPromise.count') do
      post :create, manifesto_promise: { description: @manifesto_promise.description, progress: @manifesto_promise.progress, title: @manifesto_promise.title }
    end

    assert_redirected_to manifesto_promise_path(assigns(:manifesto_promise))
  end

  test "should show manifesto_promise" do
    get :show, id: @manifesto_promise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manifesto_promise
    assert_response :success
  end

  test "should update manifesto_promise" do
    patch :update, id: @manifesto_promise, manifesto_promise: { description: @manifesto_promise.description, progress: @manifesto_promise.progress, title: @manifesto_promise.title }
    assert_redirected_to manifesto_promise_path(assigns(:manifesto_promise))
  end

  test "should destroy manifesto_promise" do
    assert_difference('ManifestoPromise.count', -1) do
      delete :destroy, id: @manifesto_promise
    end

    assert_redirected_to manifesto_promises_path
  end
end
