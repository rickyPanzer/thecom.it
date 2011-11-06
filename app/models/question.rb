class Question < ActiveRecord::Base
  belongs_to :questiontype
  belongs_to :startup
end
