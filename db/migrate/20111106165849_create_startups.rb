class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :password
      t.string :picture
      t.string :email
      t.integer :fbID
      t.integer :hashEmailVerify
      t.integer :activeEmail
      t.integer :hashPashChange
      t.timestamp :PassChangeRequest
      t.string :website
      t.integer :phone

      t.timestamps
    end
  end
end
