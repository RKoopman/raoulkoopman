require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
config.assets.initialize_on_precompile = false


module RaoulKoopman
  class Application < Rails::Application

  end
end
