class CreateAdminAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :topic
      t.text :description

      t.timestamps
    end
  end
end
