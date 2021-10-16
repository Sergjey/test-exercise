require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'byebug'
require "rspec"
require "rspec/expectations"

Capybara.default_max_wait_time = 10
Capybara.use_default_driver
Capybara::Screenshot.autosave_on_failure = true
Capybara.save_path = "reports/error_screenshots"
Capybara.default_driver = :selenium
Capybara.default_selector = :xpath

CUCUMBER_PUBLISH_ENABLED=true

Capybara.register_driver :selenium do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => [ "start-maximized" ],
                                                                                   'prefs' => {
                                                                                       'download.default_directory' => "C:\\Downloads",
                                                                                       'download.directory_upgrade' => true,
                                                                                       'download.prompt_for_download' => false,
                                                                                   }})

  options = {browser: :chrome, desired_capabilities: caps}
  Capybara::Selenium::Driver.new(app, options)
end

