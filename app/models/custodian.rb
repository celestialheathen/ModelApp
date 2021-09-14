class Custodian < ApplicationRecord
  validates_presence_of :specialty

  def self.available 
    where(tenant_id: nil)
  end 
end
