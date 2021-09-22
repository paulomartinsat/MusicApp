require "test_helper"

class DataSummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_summary = data_summaries(:one)
  end

  test "should get index" do
    get data_summaries_url
    assert_response :success
  end

  test "should get new" do
    get new_data_summary_url
    assert_response :success
  end

  test "should create data_summary" do
    assert_difference('DataSummary.count') do
      post data_summaries_url, params: { data_summary: { data: @data_summary.data } }
    end

    assert_redirected_to data_summary_url(DataSummary.last)
  end

  test "should show data_summary" do
    get data_summary_url(@data_summary)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_summary_url(@data_summary)
    assert_response :success
  end

  test "should update data_summary" do
    patch data_summary_url(@data_summary), params: { data_summary: { data: @data_summary.data } }
    assert_redirected_to data_summary_url(@data_summary)
  end

  test "should destroy data_summary" do
    assert_difference('DataSummary.count', -1) do
      delete data_summary_url(@data_summary)
    end

    assert_redirected_to data_summaries_url
  end
end
