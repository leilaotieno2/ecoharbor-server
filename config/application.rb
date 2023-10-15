require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)
# config.action_controller.default_protect_from_forgery = true

module EcoharborServer
  class Application < Rails::Application
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    # ...

    # CORS configuration
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
      end
    end
  end
end
