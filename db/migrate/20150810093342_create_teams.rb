class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :captian
      t.string :spiritcaptian
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
