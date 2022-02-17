FM-Admin API Tool
=================

Still updating for 19.4. Added option to specify port 16000 for backwards compatibility. Updated to support setting Authenticated Stream Setting.

New for FileMaker Server 19.3, you can now manage External Authentication, FileMaker Client Settings, OData, removing a hosted file and the ability to update the user/pass for the root console user.

Now includes functionality to save a cache of the schedules JSON returned from a server, along with the ability to review any of those in order to recreate or restore from past versions. Each time you GET a list of schedules from the server, it is compared with the last cached version, and if there are any differences, and new version is saved.

Note that if you have a clean install of 19.2 or later on a Windows Server, php installation is no longer included. Run this optional powershell script to install php 7 and configure for FMS. Then the Admin API calls to control PHP will work from FMS Admin API as well. You can re-enable checking the PHP admin api by default in the navigation script if you want that as well.

Updated version for FileMaker Server 19.3. This version requires FileMaker 18+. Some Admin API calls are not supported on earlier versions of FMS and may return an error. All scripts that accept parameters have been updated to use JSON as script parameters.

This file is presented as a learning tool for:

    1. Working with REST APIs from FileMaker Pro
    2. Working with the Admin API in FileMaker Server 18+

The file is shown as a feature complete tool to help understand the APIs in FileMaker Server. You can use as a foundation to build your own solutions to administer your FileMaker Servers.

This is provided as-is with no warranties, and it is up to you to add any needed security to your own files.

To use, create a new record and add your server URL, not including "http://" or "https://" and trailing ":16000/" at the end. In the "Authentication" panel, enter the username and password for a valid admin account for your FileMaker Server.

Once you have logged in, you can check status and manage your server, including changing several settings not available in the web based Admin Console, such as setting the cache size.

Scripts have been laid out to match the Admin API Docs, so you can follow along by reading through the server documentation.

Use the "Debug" popover in the lower right to view JSON responses and HTTP Headers returned from the server.

Updated to support managing more than one server. Added scripting and buttons to open, close, pause and resume databases. Added support for managing connected clients, send messages and disconnect.

Updated to work with FileMaker Server 18, including multiple web publishing worker machines.

Full support for schedules are included in this latest build.

Added some support for working with and testing the FM Data API. Click the "data api" button in the sample file to explore functionality. You can get details about file hosted on the server, connect as a user and explore records.

Blog regarding 19.2 update: <a href="https://www.soliantconsulting.com/blog/filemaker-server-admin-api-update/">https://www.soliantconsulting.com/blog/filemaker-server-admin-api-update/</a>

Previous blog here: <a href="https://www.soliantconsulting.com/blog/filemaker-19-admin-api/">https://www.soliantconsulting.com/blog/filemaker-19-admin-api/</a>


Note: The Admin API in FileMaker 17 expired in September 2019.
