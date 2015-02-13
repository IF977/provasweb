require 'test_helper'

class ProofIssuesControllerTest < ActionController::TestCase
  setup do
    @proof_issue = proof_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proof_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proof_issue" do
    assert_difference('ProofIssue.count') do
      post :create, proof_issue: { issue_id: @proof_issue.issue_id, proof_id: @proof_issue.proof_id }
    end

    assert_redirected_to proof_issue_path(assigns(:proof_issue))
  end

  test "should show proof_issue" do
    get :show, id: @proof_issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proof_issue
    assert_response :success
  end

  test "should update proof_issue" do
    patch :update, id: @proof_issue, proof_issue: { issue_id: @proof_issue.issue_id, proof_id: @proof_issue.proof_id }
    assert_redirected_to proof_issue_path(assigns(:proof_issue))
  end

  test "should destroy proof_issue" do
    assert_difference('ProofIssue.count', -1) do
      delete :destroy, id: @proof_issue
    end

    assert_redirected_to proof_issues_path
  end
end
