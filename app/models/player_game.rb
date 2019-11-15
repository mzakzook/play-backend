class PlayerGame < ApplicationRecord
  belongs_to :player
  belongs_to :game

  def self.by_type_and_sorted(table_type)
    if table_type == "ping_pong"
      table_type = "Ping Pong"
    elsif table_type == "shuffleboard"
      table_type = "Shuffleboard"
    elsif table_type == "foosball"
      table_type = "Foosball"
    else
      return PlayerGame.all
    end
    type_games = PlayerGame.select{|pg| pg.game.table.table_type == table_type && pg.game.full}.group_by{|pg| pg.player_id}
    players = []
    type_games.each {|key, value| players << [value.length, value[0].player_id] }
    sorted_players = players.sort_by {|player| player[0] }.reverse
    sorted_players
  end
  

end


# .sort! { |a,b| a.key <=> b.key }
# Order.select("date(created_at) as ordered_date, sum(price) as total_price").group("date(created_at)")

# Bookmark.select('favorite, count(favorite) as cnt').where('user_id = ?', self.id).group('favorite').order('cnt DESC').first

# SELECT columns_to_return FROM table_name;

