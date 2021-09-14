class RemoveCustodianFromTenants < ActiveRecord::Migration[6.1]
  def change
    remove_reference :tenants, :custodian, null: false, foreign_key: true
  end
end
