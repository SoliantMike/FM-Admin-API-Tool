FM-Admin API Tool
=================

This file is presented as a learning tool for:

    1. Working with REST APIs from FileMaker Pro
    2. Working with the Admin API Trial in FileMaker 17 Server

The file is very much a work in progress, so you can use as a foundation to build your own solutions to administer your FileMaker Servers. 

This is provided as-is with no warranties, and it is up to you to add any needed security to your own files.

To use, create a new record and add your complete server URL, including "http://" or "https://" and trailing "/" at the end. In the "Auth" dialog, enter the username and password for a valid admin account for your FM Server.

Once you have logged in, you can check status and manage your server, including changing several settings not available in the web based Admin Console, such as setting the cache size.

Not all functionality is currently implemented, so watch for updates.

Scripts have been laid out to match the Admin API Docs, so you can follow along by reading through the server documentation.

To Do:
   • Create/Edit schedules
   • Close/Open Files, send messages, etc...



