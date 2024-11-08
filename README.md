FM-Admin API Tool
=================

FileMaker Server 2024 (version number 21) is out! See here for a summary <a href="https://www.soliantconsulting.com/blog/filemaker-2024-executive-summary-1/">https://www.soliantconsulting.com/blog/filemaker-2024-executive-summary-1/</a>

New in 21.1.1:

	• Get and set the HTTPS tunneling option
	• Upload SSL certs with files instead of a newline-escaped strings

New in 21.0.1:

	• Upload/Download a Database File
	• Manage Administrator Roles
	• Get/Set Admin Contact
	• Get/Set Blocking new users on hosted files
	• Several More, see release notes for more (https://help.claris.com/en/server-release-notes/content/index.html)

Note that this release should be used only with FileMaker Server 21, as there are some differences in some api calls that are not handled by server version number, and the code was not branched to handle different versions. If you run a prior version of FMS, you can get an older release.

New in 20.1.1:

	• Get/Set Persistent Cache Settings
	• Get/Update Nginx Load Balancer URL Setting

New in 19.6:

	• PKI Authentication using JWT
	• Manage API public keys, as well as scripting to create private/public keys and JWT
	• Restrict Admin Console and Admin API access
	• Get database visibility
	• Clone only option in Scheduled Backups

Scripting to create private/public keys works in FileMaker Pro on either platform and requires applescript (macos) or powershell (win) to run the required shell functions. These are the same functions that get run in the included python scripts that come with FileMaker Server as example files. There is no python dependency when run from this API Tool. Also included is the ability to generate a JSON Web Token (JWT) that can then be used to authenticate when making Admin API calls.

This functionality is also available in the standalone file named "SSH Keys & JWT.fmp12"", if that is all you need. Note that in either file, the private key is not encrypted with a pass phrase since it is only stored in the database and not as a file on disk. You should apply security on the fmp file as needed to secure private keys.

Updates to 19.5 added:

	• Cancel currently running backup
	• Get Server Parallel Backup Setting
	• Update Server Parallel Backup Setting

For 19.4, Added option to specify port 16000 for backwards compatibility. Updated to support setting Authenticated Stream Setting.

New in 9.3, you can now manage External Authentication, FileMaker Client Settings, OData, removing a hosted file and the ability to update the user/pass for the root console user.

Now includes functionality to save a cache of the schedules JSON returned from a server, along with the ability to review any of those in order to recreate or restore from past versions. Each time you GET a list of schedules from the server, it is compared with the last cached version, and if there are any differences, and new version is saved.

Note that if you have a clean install of 19.2 or later on a Windows Server, php installation is no longer included. Run this optional powershell script to install php 7 and configure for FMS. Then the Admin API calls to control PHP will work from FMS Admin API as well. You can re-enable checking the PHP admin api by default in the navigation script if you want that as well.

Note: This version requires FileMaker 19. Some Admin API calls are not supported on earlier versions of FMS and may return an error. All scripts that accept parameters have been updated to use JSON as script parameters.

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

Blog regarding 19.6 update: <a href="https://www.soliantconsulting.com/blog/filemaker-server-admin-api-tool-19-6/">https://www.soliantconsulting.com/blog/filemaker-server-admin-api-tool-19-6/</a>
