class StockUserRelation < ActiveRecord::Base
  attr_accessible :stock_id, :user_id
end
