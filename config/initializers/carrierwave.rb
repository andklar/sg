require 'carrierwave/orm/activerecord'
CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id: ENV["cloud_key"],
    google_storage_secret_access_key: ENV["cloud_secret"]
  }
  config.fog_directory = 'alpha001'
end
