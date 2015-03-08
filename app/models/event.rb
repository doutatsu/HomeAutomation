class Event < ActiveRecord::Base
  include RankedModel
  ranks :row_order
end
