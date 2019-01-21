class PagesController < ApplicationController
  skip_before_action :authorize, only: [:show]
    def show
      render template: "pages/#{params[:page]}"
    end
end
