module Placeholder
    extend ActiveSupport::Concern

    def self.image_generator(height:, width:)
        "https://dummyimage.com/#{height}x#{width}/000/fff"
    end

end