class AddTextToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :text, :text
  end
end
