class Dashboard < ApplicationRecord
  belongs_to :user
  has_many :sections, -> { order(position: :asc) }
  has_many :notes

  after_create :create_default_sections

  def create_default_sections
    3.times { Section.create(dashboard: self) }
  end
end
