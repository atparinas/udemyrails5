class Topic < ApplicationRecord

    #Validation Section
    validates_presence_of :title

    #Relationshipt Section
    has_many :blogs
end
