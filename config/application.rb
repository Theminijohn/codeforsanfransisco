require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Codesf
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.

    # If you push your application to heroku, it will precompile your assets automatically. 
    # It might fail if your assets contain references to environment variables such as 
    # hostname of database. To fix this we deactivate it:
    config.assets.initialize_on_precompile = false

    # We are telling devise not to use the default layout 'application'.
    config.to_prepare do
	    Devise::SessionsController.layout "blog"
	    Devise::RegistrationsController.layout "blog"
	    Devise::ConfirmationsController.layout "blog"
	    Devise::UnlocksController.layout "blog"
	    Devise::PasswordsController.layout "blog"
		end
  end
end
