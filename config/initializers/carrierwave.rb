# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIA5LA7SQO25KRQIJ4K"],        # required
    aws_secret_access_key: ENV["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"],        # required
  }
  config.fog_directory  = ENV["flitter-bucket"]              # required
end