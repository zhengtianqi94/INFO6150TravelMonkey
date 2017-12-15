/**
 * Created by zheng on 2017/10/14.
 */
var socialMedia = {
    facebook: 'http://facebook.com',
    twitter: 'http://twitter.com',
    google: 'http://google.com',
    linkedin: 'http://linkedin.com'
};

function redirect(name) {
    window.open(socialMedia[name]);
}
