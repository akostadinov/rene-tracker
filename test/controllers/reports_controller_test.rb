require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @volunteers = volunteers(:one)
    @report = reports(:one)
  end

  test "should get index" do
    get :index, params: { volunteers_id: @volunteers }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { volunteers_id: @volunteers }
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, params: { volunteers_id: @volunteers, report: @report.attributes }
    end

    assert_redirected_to volunteers_report_path(@volunteers, Report.last)
  end

  test "should show report" do
    get :show, params: { volunteers_id: @volunteers, id: @report }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { volunteers_id: @volunteers, id: @report }
    assert_response :success
  end

  test "should update report" do
    put :update, params: { volunteers_id: @volunteers, id: @report, report: @report.attributes }
    assert_redirected_to volunteers_report_path(@volunteers, Report.last)
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, params: { volunteers_id: @volunteers, id: @report }
    end

    assert_redirected_to volunteers_reports_path(@volunteers)
  end
end
