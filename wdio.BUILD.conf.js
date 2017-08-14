const config = require('./wdio.conf.js').config;

config.specs = [
  './src/features/**/*.feature'
],

config.capabilities = [{
  maxInstances : 1,
  browserName: 'phantomjs',
}];

config.services = ['phantomjs'];

exports.config = config;
