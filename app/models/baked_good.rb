class BakedGood < ActiveRecord::Base
  belongs_to :bakery

  def self.by_price
    BakedGood.order(:price).reverse
  end

  def self.most_expensive
    BakedGood.by_price.first
  end
end
