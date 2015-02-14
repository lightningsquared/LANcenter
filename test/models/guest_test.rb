require 'test_helper'

class GuestTest < ActiveSupport::TestCase

  def setup
    @zack = guests(:zack)
    @ariel = guests(:ariel)
    @event = events(:dragonlan_1)
  end

  test 'should be valid' do
    assert @zack.valid?
    assert @ariel.valid?
  end

  test 'name should be present' do
    @zack.name = '     '
    refute @zack.valid?
  end

  test 'email should be present' do
    @zack.email = '     '
    refute @zack.valid?
  end

  test 'email addresses should be unique' do
    duplicate_user = @ariel.dup
    duplicate_user.email = @ariel.email.upcase
    @ariel.save
    refute duplicate_user.valid?
  end

  test 'checked in guests' do
    assert @ariel.checked_in?
    refute @zack.checked_in?
  end
end
