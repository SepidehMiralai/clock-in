require 'test_helper'

class ClockEventTest < ActiveSupport::TestCase
  fixtures :clock_events
  def test_clock_event
    clock_event1 = ClockEvent.new :time_logged => clock_events(:one).time_logged,
                    :clock_in => clock_events(:one).clock_in, :user_id => clock_events(:one).user_id
    assert clock_event1.save

    clock_event2 = ClockEvent.find(clock_event1.id)
    assert_equal clock_event2.time_logged, clock_event1.time_logged

  end
end
