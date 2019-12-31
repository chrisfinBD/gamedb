class RemoveConsoleIdFromGames < ActiveRecord::Migration[6.0]
  def change

    remove_column :games, :console_id, :bigint
  end
end
