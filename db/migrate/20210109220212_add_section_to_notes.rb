class AddSectionToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :dashboard, foreign_key: true
  end
end
