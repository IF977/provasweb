require 'test_helper'

class ProofAnsweredsControllerTest < ActionController::TestCase
  setup do
    @proof_answered = proof_answereds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proof_answereds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proof_answered" do
    assert_difference('ProofAnswered.count') do
      post :create, proof_answered: { email: @proof_answered.email, endTime: @proof_answered.endTime, name: @proof_answered.name, startTime: @proof_answered.startTime }
    end

    assert_redirected_to proof_answered_path(assigns(:proof_answered))
  end

  test "should show proof_answered" do
    get :show, id: @proof_answered
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proof_answered
    assert_response :success
  end

  test "should update proof_answered" do
    patch :update, id: @proof_answered, proof_answered: { email: @proof_answered.email, endTime: @proof_answered.endTime, name: @proof_answered.name, startTime: @proof_answered.startTime }
    assert_redirected_to proof_answered_path(assigns(:proof_answered))
  end

  test "should destroy proof_answered" do
    assert_difference('ProofAnswered.count', -1) do
      delete :destroy, id: @proof_answered
    end

    assert_redirected_to proof_answereds_path
  end
end
