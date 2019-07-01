class Portfolio < ApplicationRecord
    include Placeholder

    validates_presence_of :title, :body, :main_image

    #Custom Scope
    def self.react
        where(subtitle: 'React JS')
    end

    scope :ruby_on_rails_portfolios, -> {where(subtitle: "Ruby on Rails")}


    #Seting Default Value
    after_initialize :set_defaults 

    def set_defaults
        # self.main_image ||= "https://dummyimage.com/600x400/000/fff"
        self.main_image ||= Placeholder.image_generator(height: '600', width: '400')

        # the "||" prevents the value set by user to be overriden by default
        # if the "||" is remove, what ever the value set by users, it will still be the default
    end
end
