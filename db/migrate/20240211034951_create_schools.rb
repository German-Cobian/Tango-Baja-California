class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :description
      t.string :bio_jose
      t.string :bio_cris
      t.string :email
      t.string :phone
      t.string :whatsapp
      t.string :facebook
      t.string :instagram
      t.string :webpage

      t.timestamps
    end
  end
end
