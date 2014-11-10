class CreateUserIdInstitutionIds < ActiveRecord::Migration
  def change
    create_table :user_id_institution_ids do |t|
      t.integer :user_id
      t.integer :institution_id

      t.timestamps
    end
  end
end
