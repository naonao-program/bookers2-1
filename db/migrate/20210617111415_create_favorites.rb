class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :favorites,[:book_id,:user_id], unique: true
  end
end
