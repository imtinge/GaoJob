class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}

  def publish!
    self.update_attribute(:is_hidden, false)
  end

  def hide!
    self.update_attribute(:is_hidden, true)
  end
end
