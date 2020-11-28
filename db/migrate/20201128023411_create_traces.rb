class CreateTraces < ActiveRecord::Migration[6.0]
  def change
    create_table :traces do |t|

      t.timestamps
    end
  end
end
