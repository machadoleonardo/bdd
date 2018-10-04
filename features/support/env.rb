require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/poltergeist'
require 'capybara-screenshot/cucumber'
require 'base64'

app_host = 'http://smasp-itg.ungp.softplan.com.br/'
max_wait_time = 30

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = max_wait_time
Capybara.app_host = app_host

BROWSER = ENV['BROWSER']

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app,
        :browser => :chrome,
        :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
        'args' => [ "--start-maximized" ]
    }
))
    elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
        elsif BROWSER.eql?('poltergeist')
        options = { js_errors: false }
        Capybara::Poltergeist::Driver.new(app, options)
    end

end

Capybara::Screenshot.autosave_on_failure = false
Capybara::Screenshot.prune_strategy = :keep_last_run
After do |cenário|
 if cenário.failed?
   add_screenshot(cenário)
   add_browser_logs
 end
end
def add_screenshot(cenário)
 file_path = "tmp/capybara/#{cenário.source.last.name.gsub(' ', '_')}_#{cenário.__id__}_.png"
 page.driver.browser.save_screenshot(file_path)
 image = open(file_path, 'rb', &:read)
 encoded_image = Base64.encode64(image)
 embed(encoded_image, 'image/png;base64', 'SCREENSHOT')
end
def add_browser_logs
 time_now = Time.now
 # Getting current URL
 current_url = Capybara.current_url.to_s
 # Gather browser logs
 logs = page.driver.browser.manage.logs.get(:browser).map {|line| [line.level, line.message]}
# Remove warnings and info messages
 logs.reject! { |line| ['WARNING', 'INFO'].include?(line.first) }
 logs.any? == true
 embed(time_now.strftime('%Y-%m-%d-%H-%M-%S' + "\n") + ( "Current URL: " + current_url + "\n") + logs.join("\n"), 'text/plain', 'BROWSER ERROR')
end