class Vote < ActiveRecord::Base
  attr_accessible :game_suggestion_id, :member_id
end
