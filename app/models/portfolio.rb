class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image

    #Custom Scope
    def self.react
        where(subtitle: 'React JS')
    end

    scope :ruby_on_rails_portfolios, -> {where(subtitle: "Ruby on Rails")}
end
