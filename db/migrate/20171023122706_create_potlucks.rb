class CreatePotlucks < ActiveRecord::Migration
  def change
    create_table :potlucks do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.datetime :starts_at, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
