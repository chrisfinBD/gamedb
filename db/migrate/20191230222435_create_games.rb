class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :rating
      t.bigint :console_id

      t.timestamps
    end
  end
end
