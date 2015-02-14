class Guest < ActiveRecord::Base
  belongs_to :event
  validates :name,  presence: true 
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :checked_in_at, presence: true, if: :checked_in?
  enum attendance_status: [ :not_checked_in, :checked_in, :checked_out ]
end
