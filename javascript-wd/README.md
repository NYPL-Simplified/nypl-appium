# Javascript WD Client Sample Code

## Setup

* Must have NodeJS and NPM installed (https://nodejs.org/en/)
* Install dependencies by running `npm install`

## Running Tests

* To run all of the tests, run `npm test`
* To run individual tests and a sample working example:
`node ./node_modules/.bin/mocha test/basic/ios-basic-interactions.test.js`

## Troubleshooting

* ```Original error: '11.1' does not exist in the list of simctl SDKs. Only the following Simulator SDK versions are available on your system: x.y```
  * By default, these example tests expect IOS version 11.1
  * If 11.1 isn't available on your system, set the version by setting environment variable `IOS_PLATFORM_VERSION` or install with Xcode
    (e.g.: `IOS_PLATFORM_VERSION=11.2 $(npm bin)/mocha -t 6000000 test/path/to/test.js`)
