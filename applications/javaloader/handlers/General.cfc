component {
	//property name="HelloWorld" inject="javaLoader:HelloWorld";
	property name="javaLoader" inject="loader@cbjavaLoader";
	
	function onAppStart() {
	}
	
	function dspHello() {
	
		//Load the hello world class
        //javaloader.appendPaths( getSetting( "ApplicationPath" ) & "includes" );
		writeDump(javaLoader.create('HelloWorld'));abort;
		Event.setvalue("HelloWorldObj", getPlugin("JavaLoader").create("HelloWorld").init());
		
		//getPlugin("Logger").tracer("MyLoader just finished loading the HelloWorld Class object.");
		
		Event.setView("Hello");
	
	}
	

}