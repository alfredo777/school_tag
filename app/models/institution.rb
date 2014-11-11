class Institution < ActiveRecord::Base
	has_many :users , through: :user_id_institution_ids, dependent: :destroy
    
    validates :name, uniqueness: true

	searchable do
      text :name, :grade
    end
end
