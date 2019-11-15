class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :num_players, :full, :updated_at, :table, :players, :player_games
  belongs_to :table
  has_many :player_games
  has_many :players
end
