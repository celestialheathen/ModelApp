class Landlord < ApplicationRecord
  has_and_belongs_to_many :tenants, join_table: :buildings
end
