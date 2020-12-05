class AddFieldsToLinks < ActiveRecord::Migration[6.0]
  def change
    remove_column :links, :count, :integer
    remove_column :links, :domain, :string
    add_column :links, :visit_count, :integer, default: 0
    add_column :links, :title, :string
    add_column :links, :image, :string
    add_column :links, :favicon, :string
  end
end
