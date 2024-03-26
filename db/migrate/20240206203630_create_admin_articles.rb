class CreateAdminArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :category
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
