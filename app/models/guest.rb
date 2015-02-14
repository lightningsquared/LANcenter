class Guest < ActiveRecord::Base
  belongs_to :event

  enum attendance_status: [ :not_checked_in, :checked_in, :checked_out ]
end
