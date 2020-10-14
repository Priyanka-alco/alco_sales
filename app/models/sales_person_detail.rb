class SalesPersonDetail < ApplicationRecord

  def self.get_sales_person_detail(parameter={})
    result = {}
    if parameter.present?
      result = self.where("#{parameter.keys[0]} = '#{parameter.values[0]}'")
    else
      result = self.all
    end
    return result
  end
end
