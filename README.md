FM-Admin API Tool
=================

Updated version for the latest versions of FileMaker Server. This version requires FileMaker 18+. All scripts that accept parameters have been updated to use JSON as script parameters.

This file is presented as a learning tool for:

    1. Working with REST APIs from FileMaker Pro
    2. Working with the Admin API in FileMaker Server 18

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

Read more here: <a href="https://www.soliantconsulting.com/blog/filemaker-18-admin-api/">https://www.soliantconsulting.com/blog/filemaker-18-admin-api/</a>


Note: The Admin API in FileMaker 17 expired in September 2019.
