class Section < ApplicationRecord
  belongs_to :dashboard
  acts_as_list scope: :dashboard

  has_many :links
end
