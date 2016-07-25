class CreateBeachesUsers < ActiveRecord::Migration
  def change
  	create_table :beaches_users, id: false do |t|
      t.integer :beach_id
      t.integer :user_id     
    end
  end
end
