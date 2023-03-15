# frozen_string_literal: true

class Cutie < ApplicationRecord
  validates :name, presence: true
  validates :character, presence: true
  validates :level, presence: true

  belongs_to :users
  has_many :feedings

  scope :active, -> { where(deleted_at: nil) }

  def get_character; end

  def get_level; end
end
