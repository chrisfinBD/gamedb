class AddConsoleToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :console, :string
  end
end
