require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Politics
  class Application < Rails::Application
    ['ja'].each do |locale|
      config.i18n.load_path += Dir[Rails.root.join('config','locales',locale,'**','*.{rb,yml}')]
    end
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja
    I18n.enforce_available_locales = false
    config.active_record.timestamped_migrations = false
    config.time_zone = "Tokyo"

    config.generators.template_engine = :slim
    config.generators.test_framework  = :rspec
  end
end
