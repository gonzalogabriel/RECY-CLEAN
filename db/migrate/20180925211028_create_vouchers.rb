class CreateVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :vouchers do |t|
      t.string :metrics
      t.float :delivered
      t.datetime :delivery_date
      t.references :user, foreign_key: true
      t.references :recyclingType, foreign_key: true
      t.references :collectionCenter, foreign_key: true

      t.timestamps
    end
  end
end
