class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :startup_id
      t.integer :questiontype_id
      t.string :text
      t.integer :order

      t.timestamps
    end
  end
end
