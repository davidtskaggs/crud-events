class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :item
      t.references :user, foreign_key: true
      t.references :potluck, foreign_key: true
    end
  end
end
