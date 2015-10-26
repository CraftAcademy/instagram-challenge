class AddLikesToImages < ActiveRecord::Migration
  def change
    add_column :images, :description, :boolean
  end
end
