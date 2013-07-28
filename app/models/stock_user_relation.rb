class StockUserRelation < ActiveRecord::Base
  attr_accessible :stock_id, :user_id
  belongs_to :user
  belongs_to :stock
end
