class CreateAdminActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :title
      t.string :description
      t.string :time
      t.string :place

      t.timestamps
    end
  end
end
