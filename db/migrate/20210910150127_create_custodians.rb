class CreateCustodians < ActiveRecord::Migration[6.1]
  def change
    create_table :custodians do |t|
      t.string :name
      t.text :specialty

      t.timestamps
    end
  end
end
