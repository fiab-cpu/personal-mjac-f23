# == Schema Information
#
# Table name: histories
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :bigint           not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_histories_on_order_id    (order_id)
#  index_histories_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#  fk_rails_...  (product_id => products.id)
#
require "test_helper"

class HistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end