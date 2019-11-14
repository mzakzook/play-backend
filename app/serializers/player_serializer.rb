class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :player_games
end
