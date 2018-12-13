import wd from 'wd';
import chai from 'chai';
import { iosCaps, serverConfig } from '../helpers/caps';

const {assert} = chai;

describe('Basic IOS interactions', function () {

  let driver;

  before(async function () {
    // Connect to Appium server
    driver = await wd.promiseChainRemote(serverConfig);

    // Start the session
    await driver.init({
      ...iosCaps,
      app: require('../helpers/apps').iosTestApp
    });
  });

  after(async function () {
    await driver.quit();
  });

  it('should send keys to inputs', async function () {
    // Find TextField input element
    const textButton = 'Find Your Library';
    const textButtonEl = await driver.waitForElementByAccessibilityId(textButton);

    await textButtonEl.click();
    const textButton2 = 'Brooklyn Public Library';
    const textButtonEl2 = await driver.waitForElementByAccessibilityId(textButton2);

    const text = await textButtonEl2.text();
    assert.equal(text, 'Brooklyn Public Library');
  });

});
