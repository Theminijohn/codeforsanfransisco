class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :user_id

      t.timestamps
    end
    add_index :articles, :title
    add_index :articles, :body
    add_index :articles, :user_id
  end
end
