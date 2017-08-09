class CreateProficiencies < ActiveRecord::Migration[5.1]
  def change
    create_table :proficiencies do |t|
      t.integer :level
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true
    end
  end
end
