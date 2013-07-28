class Comment < ActiveRecord::Base
  attr_accessible :board_id, :contents, :stock_id, :user_id
  belongs_to :user
  belongs_to :board
end
