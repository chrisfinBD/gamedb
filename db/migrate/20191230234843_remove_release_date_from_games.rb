class RemoveReleaseDateFromGames < ActiveRecord::Migration[6.0]
  def change

    remove_column :games, :release_date, :date
  end
end
