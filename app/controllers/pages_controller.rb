class PagesController < ApplicationController
    def home
        @availabilities = Availability.all.order(created_at: :desc)
    end

    def declare
        @availabilities = Availability.all.order(created_at: :desc).where(type_id: 2)
    end

    def ask
        @availabilities = Availability.all.order(created_at: :desc).where(type_id: 1)
    end
    
end
