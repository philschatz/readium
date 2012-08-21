Handlebars.registerHelper('orUnknown', function(str) {
  	return str ? str : chrome.i18n.getMessage("i18n_unknown");
});

// A helper method used to fetch i18n messages in handlebars
// templates
Handlebars.registerHelper('fetchInzMessage', function(key) {
	return new Handlebars.SafeString(chrome.i18n.getMessage(key));
});