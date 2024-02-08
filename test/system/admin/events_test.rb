require "application_system_test_case"

class Admin::EventsTest < ApplicationSystemTestCase
  setup do
    @admin_event = admin_events(:one)
  end

  test "visiting the index" do
    visit admin_events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit admin_events_url
    click_on "New event"

    fill_in "Description", with: @admin_event.description
    fill_in "End time", with: @admin_event.end_time
    fill_in "Hosted by", with: @admin_event.hosted_by
    fill_in "Place", with: @admin_event.place
    fill_in "Start time", with: @admin_event.start_time
    fill_in "Title", with: @admin_event.title
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit admin_event_url(@admin_event)
    click_on "Edit this event", match: :first

    fill_in "Description", with: @admin_event.description
    fill_in "End time", with: @admin_event.end_time
    fill_in "Hosted by", with: @admin_event.hosted_by
    fill_in "Place", with: @admin_event.place
    fill_in "Start time", with: @admin_event.start_time
    fill_in "Title", with: @admin_event.title
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit admin_event_url(@admin_event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
