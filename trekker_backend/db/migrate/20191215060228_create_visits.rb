class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.string :date
      t.string :notes
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
