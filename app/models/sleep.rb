class Sleep < ApplicationRecord

  belongs_to :user

  validate :valid_time?

  private

  def valid_time?
    return if start_time < end_time
    errors.add(:base, "Start Time should always be lesser than the End Time")
  end
end
