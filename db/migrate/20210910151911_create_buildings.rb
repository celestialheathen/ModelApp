class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.belongs_to :landlord, null: false, foreign_key: true
      t.belongs_to :tenant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
