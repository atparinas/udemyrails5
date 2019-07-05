class ApplicationController < ActionController::Base
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcerns
    include SetTitle
    
    before_action :set_copyright

    def set_copyright
        @copyright = ParinasViewTool::Renderer.copyright 'Andy Parinas', 'All rights reserved'
    end

end

# module AndyViewTool

#     class Renderer

#         def self.copyright name, msg
#             "&copy; #{Time.now.year} | <b> #{name} </b> #{msg}".html_safe
#         end
#     end

# end