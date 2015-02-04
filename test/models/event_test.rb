require 'test_helper'

class EventTest < ActiveSupport::TestCase

  def setup
    @event = events(:dragonlan_1)
  end

  test 'should be valid' do
    assert @event.valid?
  end
end
