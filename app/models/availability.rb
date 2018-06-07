class Availability < ApplicationRecord
    belongs_to :user
    has_many :types

    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :type_id
    

end
