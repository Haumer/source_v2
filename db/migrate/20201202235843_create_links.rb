class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :domain
      t.datetime :last_visited
      t.integer :count

      t.timestamps
    end
  end
end
