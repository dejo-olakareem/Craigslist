class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :description
      t.string :conditon
      t.integer :price

      t.timestamps
    end
  end
end
