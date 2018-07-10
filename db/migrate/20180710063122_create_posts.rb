class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
