class AddLocationToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :location, :string
  end
end
