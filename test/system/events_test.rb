require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "/events/:idページを表示" do
    event = FactoryBot.create(:event) #((1))
    visit event_url(event) #((2))
    assert_selector "h1", text: event.name #((3))
  end

  test "/events/newを表示" do
    sign_in_as(FactoryBot.create(:user))

    visit new_event_url
    assert_selector "h1", text: "イベント作成"
  end
end
