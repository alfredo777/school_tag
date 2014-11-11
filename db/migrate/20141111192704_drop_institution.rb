class DropInstitution < ActiveRecord::Migration
  def change
    drop_table :institutions
  	create_table :institutions do |t|
      t.text :name
      t.text :grade

      t.timestamps
    end
  end
end
