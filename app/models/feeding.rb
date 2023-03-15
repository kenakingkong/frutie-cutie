# frozen_string_literal: true

class Feeding < ApplicationRecord
  validates :item, presence: true
  validates :count, presence: true, numericality: { greater_than: 0 }

  belongs_to :cuties
  # belongs_to :users, through: :cuties

  scope :today, -> { where('created_at <= ?', 1.day.ago) }
  scope :this_week, -> { where('created_at <= ?', 1.week.ago) }
  scope :this_month, -> { where('created_at <= ?', 1.month.ago) }
end
