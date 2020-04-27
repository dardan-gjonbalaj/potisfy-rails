require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PotisfyRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    RSpotify::authenticate(ENV["SPOTIFY_CLIENT"], ENV["SPOTIFY_SECRET"])
    #RSpotify::authenticate("6a6690d21a154c1fb88cb4e3ad13caf0", "335e78b7943446c597691ccbe733924a")
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
