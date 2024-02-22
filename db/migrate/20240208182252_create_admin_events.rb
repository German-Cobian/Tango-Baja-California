class CreateAdminEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :hosted_by
      t.datetime :start_time
      t.string :place

      t.timestamps
    end
  end
end
