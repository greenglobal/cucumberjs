/**
 * Open the given URL
 * @param  {String}   type Type of navigation (url or site)
 * @param  {String}   page The URL to navigate to
 * @param  {Function} done Function to execute when finished
 */
module.exports = (type, page, done) => {
    /**
     * The URL to navigate to
     * @type {String}
     */

    function formatDate(date) {
      var hours = date.getHours();
      var minutes = date.getMinutes();
      hours = hours % 12;
      hours = hours ? hours : 12; // the hour '0' should be '12'
      minutes = minutes < 10 ? '0'+minutes : minutes;
      var strTime = hours + ':' + minutes;
      return date.getMonth()+1 + "/" + date.getDate() + "/" + date.getFullYear() + "  " + strTime;
    }

    const url = (type === 'url') ? page : browser.options.baseUrl + page;

    browser.url(url);

    done();
};
