class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :phone
      t.string :avatar
      t.string :alias

      t.timestamps
    end
  end
end
