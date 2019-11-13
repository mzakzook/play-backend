class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :company
  has_many :player_games
end
