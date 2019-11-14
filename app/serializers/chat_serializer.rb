class ChatSerializer
  include FastJsonapi::ObjectSerializer
  attributes :message, :player
  belongs_to :player
end
