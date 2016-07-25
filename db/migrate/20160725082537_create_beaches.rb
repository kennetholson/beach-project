class CreateBeaches < ActiveRecord::Migration
  def change
  	create_table :beaches do |t|
      t.string :location, null: false
      t.string :average_wave, null: false
      t.string :condition, null: false
      

      t.timestamps null: false
    end
  end
end
