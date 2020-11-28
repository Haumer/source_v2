class Dashboard < ApplicationRecord
  belongs_to :user

  def create_default_sections
    3.times { Section.create(user: self) }
  end
end
