const config = require('./wdio.conf.js').config;

config.specs = [
  './src/features/**/*.feature'
],

config.capabilities = [{
  maxInstances : 1,
  browserName: 'phantomjs',
}];

config.services = ['phantomjs'];
config.reporters = ['cucumber', 'allure'];

exports.config = config;
