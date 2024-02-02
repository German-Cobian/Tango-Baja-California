require "application_system_test_case"

class Admin::ActivitiesTest < ApplicationSystemTestCase
  setup do
    @admin_activity = admin_activities(:one)
  end

  test "visiting the index" do
    visit admin_activities_url
    assert_selector "h1", text: "Activities"
  end

  test "should create activity" do
    visit admin_activities_url
    click_on "New activity"

    fill_in "Category", with: @admin_activity.category
    fill_in "Description", with: @admin_activity.description
    fill_in "Place", with: @admin_activity.place
    fill_in "Time", with: @admin_activity.time
    fill_in "Title", with: @admin_activity.title
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "should update Activity" do
    visit admin_activity_url(@admin_activity)
    click_on "Edit this activity", match: :first

    fill_in "Category", with: @admin_activity.category
    fill_in "Description", with: @admin_activity.description
    fill_in "Place", with: @admin_activity.place
    fill_in "Time", with: @admin_activity.time
    fill_in "Title", with: @admin_activity.title
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "should destroy Activity" do
    visit admin_activity_url(@admin_activity)
    click_on "Destroy this activity", match: :first

    assert_text "Activity was successfully destroyed"
  end
end
