class CreateSurvivors < ActiveRecord::Migration[5.2]
  def change
    create_table :survivors do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :longitude
      t.string :latitude
      t.boolean :is_infected
      t.integer :count_reports

      t.timestamps
    end
  end
end
