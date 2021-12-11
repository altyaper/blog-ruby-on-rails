class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :status
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
