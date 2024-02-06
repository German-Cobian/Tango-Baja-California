class CreateAdminMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.string :title
      t.text :description
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
