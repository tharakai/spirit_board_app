class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :game
      t.integer :team_id
      t.integer :by_team_id
      t.integer :rules
      t.integer :fouls
      t.integer :fair_mind
      t.integer :positivity
      t.integer :communication

      t.timestamps
    end
  end
end
