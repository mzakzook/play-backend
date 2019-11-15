class ChatSerializer
  include FastJsonapi::ObjectSerializer
  attributes :message, :player, :created_at
  belongs_to :player
end
