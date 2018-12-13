# Sample Code

Based on Appium's main repo [sample code](https://github.com/appium/appium).

## Running sample code

* Follow the [Appium setup guide](https://github.com/appium/appium/blob/master/docs/en/about-appium/getting-started.md) to install Appium locally.
* Start the Appium server (either command line or desktop client).
* Choose the client library that you wish to run and then follow the guide in `/<client-language>/README.md` (e.g.: `/python/README.md`)

## Environment variables

* `DEV`: If set to true, runs  apps that are downloaded from GitHub, otherwise runs apps that are in local directory
* `IOS_DEVICE_NAME`: Sets the `deviceName` capability for iOS. Otherwise uses some default
* `IOS_PLATFORM_VERSION`: Sets the `platformVersion` capability for iOS. Otherwise uses some default
* `ANDROID_DEVICE_NAME`: Sets the `deviceName` capability for Android. Otherwise uses some default
* `ANDROID_PLATFORM_VERSION`: Sets the `platformVersion` capability for Android. Otherwise uses some default
* `SAUCE_LABS`: If set to true, runs tests on Sauce Labs. Requires being setup on SauceLabs to run these tests.

# SimplyE.app file

Ask a developer for a build of the SimplyE app to run tests against. Currently, only iOS is supported and tested.
