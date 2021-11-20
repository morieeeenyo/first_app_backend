class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :content, null: false, default: ''
      t.boolean :checked, null: false, default: false
      t.timestamps
    end
  end
end
