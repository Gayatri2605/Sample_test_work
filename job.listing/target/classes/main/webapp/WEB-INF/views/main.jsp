<html>
	<head>
	    <title>Main Window to view jobs</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	</head>
	<body>
	    <div class="container">
	    <div>&nbsp;</div>
	        <h3 id="form_header" class="text-primary" align="center">Select to Perform Operation</h3>
	        <div>&nbsp;</div>
	        
	        <div id="sync_job_div">
	    			<c:url var="sync_job" value="/main/jobs/sync" /><a id="sync" href="${sync_job}" class="btn btn-primary">Sync Jobs</a>
	    	</div>
	    	<div>&nbsp;</div>
	    	
	    	<div id="list_jobs_div">
	    			<c:url var="list_jobs" value="/main/jobs" /><a id="list" href="${list_jobs}" class="btn btn-primary">List Jobs</a>
	    	</div>
	    	<div>&nbsp;</div>
	
			<!-- User input form to add a new task or update the existing task-->
	        <c:url var="search" value="/main/jobs/search" />
	        <form:form id="task_form" modelAttribute="searchAttr" method="GET" action="${search}">
	        <form:hidden path="mode" />
	            <label for="title">Job Title:</label>
	            <form:input id="title_name" cssClass="form-control" path="title" />
	            <div>&nbsp;</div>
	            <label for="desc">Location</label>
	            <form:input id="location" cssClass="form-control" path="desc" />
	            <div>&nbsp;</div>
	            <button id="saveBtn" type="submit" class="btn btn-success">Search</button>
	        </form:form>
	    </div>
	</body>
</html>