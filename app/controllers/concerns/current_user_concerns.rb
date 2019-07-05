module CurrentUserConcerns
    extend ActiveSupport::Concern

    def current_user
        super || guest_user

    end

    def guest_user
        # OpenStruct.new(name: "Guest User")
        guest = GuestUser.new
        guest.name = "Guest User"
        guest.email = "guest@email.com"

        guest
    end

end