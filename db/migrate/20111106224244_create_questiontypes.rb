class CreateQuestiontypes < ActiveRecord::Migration
  def change
    create_table :questiontypes do |t|
      t.string :name
      t.integer :active

      t.timestamps
    end
  end
end
