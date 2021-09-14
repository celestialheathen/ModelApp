class AddReferenceToTenants < ActiveRecord::Migration[6.1]
  def change
    add_reference :tenants, :custodian, foreign_key: true
  end
end
