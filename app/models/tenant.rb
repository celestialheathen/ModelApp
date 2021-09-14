class Tenant < ApplicationRecord
  has_and_belongs_to_many :landlords, join_table: :buildings  
  has_one :custodian
end
