class ApplicationController < ActionController::Base
  before_action :set_i18n_locale_from_params
  before_action :authorize
# ...
  def default_url_options
    { locale: I18n.locale }
  end

  protected

    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end

    def set_i18n_locale_from_params
      if params[:locale]
        if I18n.available_locales.map(&:to_s).include?(params[:locale])
          I18n.locale = params[:locale]
        end
      end
    end
end
