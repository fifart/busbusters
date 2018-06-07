class PagesController < ApplicationController
    def home
        @avail = Availability.all.order(created_at: :desc)
        @req = Request.all.order(created_at: :desc)
        @adverts = (@req + @avail)

    end


end
