class Institution < ActiveRecord::Base
	has_many :users , through: :user_id_institution_ids, dependent: :destroy
end
