Capybara.configure do |config|
  config.match = :prefer_exact
  config.javascript_driver = :webkit
  config.asset_host = 'http://localhost:3000'
end
