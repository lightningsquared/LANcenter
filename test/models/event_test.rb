require 'test_helper'

class EventTest < ActiveSupport::TestCase

  def setup
    @event = events(:dragonlan_1)
  end

  test 'should be valid' do
    assert @event.valid?
  end

  test 'should have a name' do
    @event.name = '    '
    refute @event.valid?
  end

  test 'should have a start time' do
    @event.start_time = Time.zone.parse('    ')
    refute @event.valid?
  end

  test 'should have an end time' do
    @event.end_time = Time.zone.parse('    ')
    refute @event.valid?
  end
end
