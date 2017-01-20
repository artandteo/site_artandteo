require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ArtandteoSite
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #config.assets.precompile += Ckeditor.assets
    #config.assets.precompile += %w( ckeditor/* )
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)

    I18n.enforce_available_locales = false
	I18n.config.available_locales = :en
    I18n.config.default_locale = :fr
  end
end
