class CreateCollectionCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :collection_centers do |t|
      t.string :name_center
      t.string :address_center
      t.float :gps_latitude
      t.float :gps_length
      t.string :email_center
      t.string :phone_center
      t.string :schedule

      t.timestamps
    end
  end
end
