require 'spec_helper'

desired_caps = {
  caps: {
    platformName:  'iOS',
    platformVersion: ENV["IOS_PLATFORM_VERSION"] || '12.1',
    deviceName:    ENV["IOS_DEVICE_NAME"] || 'iPhone 8',
    app:           IOS_APP,
    automationName: 'XCUITest',
  },
  appium_lib: {
    sauce_username:   ENV['SAUCE_LABS'] ? ENV['SAUCE_USERNAME'] : nil,
    sauce_access_key: ENV['SAUCE_LABS'] ? ENV['SAUCE_ACCESS_KEY'] : nil,
    wait: 60
  }
}

# Start the driver
describe "IOS Basic Interactions" do
  before(:all) do
    @driver = Appium::Driver.new(desired_caps, false).start_driver
  end

  after(:all) do
    @driver.quit
  end

  it "basic test" do
    buttonElement = @driver.find_element :accessibility_id, "Find Your Library"
    buttonElementText = buttonElement.text
    expect(buttonElementText).to eq "Find Your Library"

    buttonElement.click

    textElement = @driver.find_element :accessibility_id, "Brooklyn Public Library"
    textElementTitle = textElement.attribute :name
    expect(textElementTitle).to eq "Brooklyn Public Library"
  end
end
