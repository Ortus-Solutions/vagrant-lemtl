component output="false" {

	this.name = hash( cgi.server_name, "MD5", "utf-8" );
	this.applicationTimeout = createTimeSpan( 1, 0, 0, 0 );
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan( 0, 0, 30, 0 );
	this.sessionType = "j2ee";
	this.sessionStorage = "railo-session";
	this.sessioncookie.httponly = true;
	this.sessioncookie.secure = true;
	this.loginStorage = "session";
	this.clientManagement = true;
	this.clientStorage = "railo-client";
	this.setClientCookies = true;
	this.setDomainCookies = true;
	this.scriptProtect = true;

	this.datasources[ "cfartgallery" ] = {
		class: "org.gjt.mm.mysql.Driver"
		, connectionString: "jdbc:mysql://localhost:3306/cfartgallery?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=round&autoReconnect=true&jdbcCompliantTruncation=true&useOldAliasMetadataBehavior=true&allowMultiQueries=false"
		, username: "root"
		, password: "password"
	};

	this.datasources[ "railo-client" ] = {
		class: "org.gjt.mm.mysql.Driver"
		, connectionString: "jdbc:mysql://localhost:3306/cfartgallery?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=round&autoReconnect=true&jdbcCompliantTruncation=true&useOldAliasMetadataBehavior=true&allowMultiQueries=false"
		, username: "root"
		, password: "password"
	};

	this.datasources[ "railo-session" ] = {
		class: "org.gjt.mm.mysql.Driver"
		, connectionString: "jdbc:mysql://localhost:3306/cfartgallery?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=round&autoReconnect=true&jdbcCompliantTruncation=true&useOldAliasMetadataBehavior=true&allowMultiQueries=false"
		, username: "root"
		, password: "password"
	};

	/**
		@hint "Runs when an application times out or the server is shutting down."
		@ApplicationScope "The application scope."
	*/
	public void function onApplicationEnd(struct ApplicationScope=structNew()) {

		return;
	}


	/**
		@hint "Runs when ColdFusion receives the first request for a page in the application."
		@output "false"
	*/
	public void function onApplicationStart() {

		return;
	}


	/**
		@hint "Runs when a session ends."
		@SessionScope "The Session scope"
		@ApplicationScope "The Application scope"
	*/
	public void function onSessionEnd(required struct SessionScope, struct ApplicationScope=structNew()) {

		return;
	}


	/**
		@hint "Runs when a session starts."
	*/
	public void function onSessionStart() {

		return;
	}


	/**
		@hint "Runs at the end of a request, after all other CFML code."
	*/
	public void function onRequestEnd() {

		return;
	}


	/**
		@hint "Runs when a request starts."
		@TargetPage "Path from the web root to the requested page."
	*/
	public boolean function onRequestStart(required string TargetPage) {

		return true;
	}



	/**
		@hint "Runs when a request specifies a non-existent CFML page."
		@TargetPage "The path from the web root to the requested CFML page."
	*/
	public boolean function onMissingTemplate(required string TargetPage) {
		var pageRequested = trim(arguments.targetPage);

		return false;
	}


	/**
		@hint "Runs when an uncaught exception occurs in the application."
		@Exception "The ColdFusion Exception object. For information on the structure of this object, see the description of the cfcatch variable in the cfcatch description."
		@EventName "The name of the event handler that generated the exception. If the error occurs during request processing and you do not implement an onRequest method, EventName is the empty string."
	*/
	public void function onError(required any Exception, required string EventName) {

		return;
	}

}