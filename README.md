# SageLive Connector

The aim of this connector is to implement data sharing between Connec! and SageLive

### Configuration
Configure your SageLive application. To create a new SageLive application: http://geekymartian.com/articles/ruby-on-rails-4-salesforce-oauth-implementation/

Create a configuration file `config/application.yml` with the following settigns (complete with your SageLive / Connec! credentials)
```
connec_api_id: 
connec_api_key: 
sagelive_client_id: 
sagelive_client_secret: 
```

### Run the connector locally against the Maestrano production environment
In the initialize `config/initializers/maestrano.rb`
```
config.app.host = 'http://localhost:3001'
```

### Run the connector
#### First time setup
```
# Install JRuby and gems the first time
rvm install jruby-9.0.5.0
gem install bundler
bundle
gem install foreman
```

#### Start the application
```
export PORT=8080
export RACK_ENV=development
foreman start
```
