require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

config.serve_static_assets = true

module KoopmanDevs
  class Application < Rails::Application

  end
end
