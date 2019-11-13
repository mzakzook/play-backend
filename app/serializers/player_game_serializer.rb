class PlayerGameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :player, :game
  belongs_to :player
  belongs_to :game
end
