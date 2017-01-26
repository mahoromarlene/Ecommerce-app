class Product < ApplicationRecord

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def calculate_tax
    return (price * 9)/100
  end

end
