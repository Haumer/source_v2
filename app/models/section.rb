class Section < ApplicationRecord
  belongs_to :dashboard
  acts_as_list scope: :dashboard
end
