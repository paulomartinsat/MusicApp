require "application_system_test_case"

class DataSummariesTest < ApplicationSystemTestCase
  setup do
    @data_summary = data_summaries(:one)
  end

  test "visiting the index" do
    visit data_summaries_url
    assert_selector "h1", text: "Data Summaries"
  end

  test "creating a Data summary" do
    visit data_summaries_url
    click_on "New Data Summary"

    fill_in "Data", with: @data_summary.data
    click_on "Create Data summary"

    assert_text "Data summary was successfully created"
    click_on "Back"
  end

  test "updating a Data summary" do
    visit data_summaries_url
    click_on "Edit", match: :first

    fill_in "Data", with: @data_summary.data
    click_on "Update Data summary"

    assert_text "Data summary was successfully updated"
    click_on "Back"
  end

  test "destroying a Data summary" do
    visit data_summaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data summary was successfully destroyed"
  end
end
