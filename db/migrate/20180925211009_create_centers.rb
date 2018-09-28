class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.string :name_center
      t.string :address_center
      t.float :gps_latitude
      t.float :gps_longitude
      t.string :email_center
      t.string :phone_center
      t.string :schedule

      t.timestamps
    end

    create_table :centers_recycling_types, id:false do |t|
      t.belongs_to :center, index: true
      t.belongs_to :recycling_type, index: true
    end
  end
end
