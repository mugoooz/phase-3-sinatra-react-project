class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.string :city
      t.string :weather
      t.string :description
      t.string :icon
      t.float :temperature
      t.float :min_temp
      t.float :max_temp

      t.timestamps
    end
  end
end
