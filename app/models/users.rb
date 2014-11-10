class Users < ActiveRecord::Base
	has_many :institutions, through: :user_id_institution_ids
	has_many :images
    has_many :tags

end
