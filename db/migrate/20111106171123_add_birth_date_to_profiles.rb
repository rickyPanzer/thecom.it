class AddBirthDateToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :birthdate, :date
  end
end
