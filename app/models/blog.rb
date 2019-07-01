class Blog < ApplicationRecord
    enum status: {draft: 0, published: 1}

    #Validation Section
    validates_presence_of :title, :body

    #Relationship Section
    belongs_to :topic
end
