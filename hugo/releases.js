'use strict';

var github = require('../_common/github.js');
var owner = 'gohugoio';
var repo = 'hugo';

module.exports = function (request) {
  return github(request, owner, repo).then(function (all) {
    // remove checksums and .deb
    all.releases = all.releases.filter(function (rel) {
      return !/(\.txt)|(\.deb)$/i.test(rel.name);
    });
    return all;
  });
};

if (module === require.main) {
  module.exports(require('@root/request')).then(function (all) {
    console.info(JSON.stringify(all));
  });
}
