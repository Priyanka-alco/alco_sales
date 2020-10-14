class SalesPersonLogin < ApplicationRecord

  def self.loggin(details={})
    self.create(:sales_person_id=>details.id,
    :status=>1)
  end
end
