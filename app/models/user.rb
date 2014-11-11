class User < ActiveRecord::Base
	has_many :institutions, through: :user_id_institution_ids
	has_many :images
    has_many :tags
    validates :phone, uniqueness: true
    validates :name, presence: true

end
