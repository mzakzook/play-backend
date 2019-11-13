class TableSerializer
  include FastJsonapi::ObjectSerializer
  attributes :table_type
  has_many :games
end
