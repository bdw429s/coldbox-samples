<cfcomponent output="false" hint="My App Configuration">
<cfscript>
/**
structures/arrays to create for configuration

- coldbox (struct)
- settings (struct)
- conventions (struct)
- environments (struct)
- ioc (struct)
- models (struct)
- debugger (struct)
- mailSettings (struct)
- i18n (struct)
- bugTracers (struct)
- webservices (struct)
- datasources (struct)
- layoutSettings (struct)
- layouts (array of structs)
- cacheBox (struct)
- interceptorSettings (struct)
- interceptors (array of structs)
- modules (struct)
- logBox (struct)

Available objects in variable scope
- controller
- logBoxConfig
- appMapping (auto calculated by ColdBox)

Required Methods
- configure() : The method ColdBox calls to configure the application.
Optional Methods
- detectEnvironment() : If declared the framework will call it and it must return the name of the environment you are on.
- {environment}() : The name of the environment found and called by the framework.

*/

	// Configure ColdBox Application
	function configure(){

		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "Java Loader Example",
			eventName 				= "event",

			//Development Settings
			debugMode				= true,
			debugPassword			= "coldbox",
			reinitPassword			= "",
			handlersIndexAutoReload = false,
			configAutoReload		= false,

			//Implicit Events
			defaultEvent			= "general.dspHello",
			applicationStartHandler = "general.onAppStart",

			//Error/Exception Handling
			exceptionHandler		= "",
			onInvalidEvent			= "",
			customErrorTemplate		= '/coldbox/system/includes/BugReport.cfm',

			//Application Aspects
			handlerCaching 			= true,
			eventCaching			= false,
			proxyReturnCollection 	= false,
			flashURLPersistScope	= "session"
		};


		// JavaLoader settings
		javaloader = {
		    // The array paths to load
		    loadPaths = ['#controller.getAppRootPath()#/includes/helloworld.jar'],
		    // Load ColdFusion classes with loader
		    loadColdFusionClassPath = false,
		    // Attach a custom class loader as a parent
		    parentClassLoader = "",
		    // Directories that contain Java source code that are to be dynamically compiled
		    sourceDirectories = [],
		    // the directory to build the .jar file for dynamic compilation in, defaults to ./tmp
		    compileDirectory = getDirectoryFromPath( getCurrentTemplatePath() ) & "model/javaloader/tmp",
		    // Whether or not the source is trusted, i.e. it is going to change? Defaults to false, so changes will be recompiled and loaded
		    trustedSource = false
		};
		

/*		//LogBox DSL
		logBox = {
			// Define Appenders
			appenders = {
				//coldboxTracer = { class="coldbox.system.logging.appenders.ColdboxTracerAppender" }
			},
			// Root Logger
			root = { levelmax="INFO", appenders="*" },
			// Implicit Level Categories
			info = [ "coldbox.system" ]
		};*/

		//Layout Settings
		layoutSettings = {
			defaultLayout = "Layout.Main.cfm",
			defaultView   = ""
		};
	}
</cfscript>
</cfcomponent>