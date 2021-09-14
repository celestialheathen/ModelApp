class AddReferenceToCustodians < ActiveRecord::Migration[6.1]
  def change
    add_reference :custodians, :tenant, foreign_key: true
  end
end
