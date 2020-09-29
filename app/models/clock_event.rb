class ClockEvent < ApplicationRecord
  belongs_to :user
  validates :time_logged, presence: true
  validate :check_clock_in_after_clock_out

  def self.search(search)
    ClockEvent.joins(:user).where('users.first_name LIKE ? or users.last_name LIKE ?', "%#{search}%", "%#{search}%" )
  end

  private

  def check_clock_in_after_clock_out
    if (ClockEvent.where(user: Current.user).pluck(:clock_in).last == false && clock_in==false)
      errors.add(:clock_in, "must be selected as you clocked out last time!")
    end
  end
end
