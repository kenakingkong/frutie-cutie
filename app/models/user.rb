# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true

  before_validation :normalize_phone, on: :create

  # has_many :cuties

  scope :active, -> { where(deleted_at: nil) }

  private

  def normalize_phone
    self.phone = phone.gsub(/\s+/, '')
  end
end
