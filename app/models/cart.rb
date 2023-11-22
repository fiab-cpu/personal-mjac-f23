# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_carts_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class Cart < ApplicationRecord
  belongs_to :product
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :product_id, presence: true
  def subtotal
    quantity * product.price
  end
end
