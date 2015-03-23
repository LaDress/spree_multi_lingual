module SpreeMultiLingual::ControllerHelperLocale
  extend ActiveSupport::Concern

  included do |base|
    # only way to make sure that set_user_language included by spree_auth_devise controller is overriden correctly
    base.class_eval do
      private

      # HACK: Made to work like we want it.
      def set_user_language
        locale = params[:locale]
        unless locale && I18n.available_locales.include?(locale.to_sym)
          locale = I18n.default_locale
        end
        I18n.locale = locale
        session[:locale] = I18n.locale
      end
    end
  end

end
