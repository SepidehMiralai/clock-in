class ClockEvent < ApplicationRecord
  belongs_to :user
  validates :time_logged, presence: true
  validate :check_clock_in_after_clock_out
  validate :check_clock_out_after_clock_in

  private

  def check_clock_in_after_clock_out
    if (ClockEvent.where(user: Current.user).pluck(:clock_in).last == false && clock_in==false)
      errors.add(:clock_in, "must be selected as you clocked out last time!")
    end
  end

  def check_clock_out_after_clock_in
    if (ClockEvent.where(user: Current.user).pluck(:clock_in).last == true && clock_in==true)
      errors.add(:clock_in, "must be not be selected as you clocked in last time!")
    end
  end
end
