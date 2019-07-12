class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.references :state, foreign_key: true
      t.string :name
      t.flloat :field_1
      t.float :field_2
      t.float :field_3
      t.float :field_4
      t.float :field_5
      t.float :field_6
      t.float :field_7
      t.float :field_8
      t.float :field_9

      t.timestamps
    end
  end
end
