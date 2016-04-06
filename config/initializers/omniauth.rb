OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :salesforce, ENV['sagelive_client_id'], ENV['sagelive_client_secret']
end