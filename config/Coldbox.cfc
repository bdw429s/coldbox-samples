 component {

	// Configure ColdBox Application
	function configure(){
	
		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "ColdBox Samples Browser",
			
			//Development Settings
			debugMode				= true,
			debugPassword			= "",
			reinitPassword			= "",
			handlersIndexAutoReload = false,
			configAutoReload		= false,
			customErrorTemplate		= '/coldbox/system/includes/BugReport.cfm',
			
			//Implicit Events
			defaultEvent			= "Samples.index",
				
			//Application Aspects
			handlerCaching 			= true,
			eventCaching			= true,
			flashURLPersistScope	= "session"	
		};
	
		// custom settings
		settings = {      
			amazonURL = "http://www.amazon.com/o/registry/7DPYG3RZG3AF",
			coldboxURL = "http://coldbox.org",
			blogURL = "http://blog.coldbox.org",
			coldboxAPIURl = "http://coldbox.org/api",
			trackerURL = "https://ortussolutions.atlassian.net/browse/COLDBOX",
			coldboxReaderApp = "applications/ColdBoxReader"
		};
		
		//Layout S         ettings
		layoutSettings = {
			defaultLayout = "Layout.Main.cfm"
		};
		
		//Register interceptors as an array, we need order
		interceptors = [
			{ class="coldbox.system.interceptors.SES" }
		];
		
		
		//i18n & Localization
		i18n = {
			defaultResourceBundle = "includes/i18n/main",
			defaultLocale = "en_US",
			localeStorage = "cookie"
		};
		
	}
}