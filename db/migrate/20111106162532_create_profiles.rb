class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username, :uniqueness => true
      t.string :password
      t.string :picture
      t.string :email, :uniqueness => true
      t.integer :fbID
      t.integer :hashEmailVerify
      t.integer :activeEmail
      t.integer :hashPashChange
      t.timestamp :PassChangeRequest

      t.timestamps
    end
  end
end
