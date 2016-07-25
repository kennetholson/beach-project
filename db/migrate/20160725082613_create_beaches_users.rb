class CreateBeachesUsers < ActiveRecord::Migration
  def change
  	create_table :beaches_users, id: false do |t|
      t.belongs_to :beach, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
