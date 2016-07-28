require 'carrierwave/orm/activerecord'
CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id: 'GOOGSQ6LRDQUT5GJ3P5H',
    google_storage_secret_access_key: 't0wZz9Nwxtxo1S0siSnUS23vKy6jQ+K1aKEgv5KS'
  }
  config.fog_directory = 'alpha001'
end
