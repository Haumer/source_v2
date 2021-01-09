class AddLinksToSections < ActiveRecord::Migration[6.0]
  def change
    add_reference :links, :section, foreign_key: true
  end
end
