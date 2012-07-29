<?php
/****************************************************************************************
* LiveZilla definitions.inc.php
* 
* Copyright 2010 LiveZilla GmbH
* All rights reserved.
* LiveZilla is a registered trademark.
* 
***************************************************************************************/ 

define("VERSION","3.2.0.2");
define("PHP_NEEDED_MAJOR",5);
define("PHP_NEEDED_MINOR",0);
define("PHP_NEEDED_BUILD",0);
define("PROTOCOL","livezilla");
define("USER_ID_LENGTH",7);
define("DATA_ITEM_LOADS",25);
define("DATA_LIFETIME",2592000);
define("DATA_URL_STORAGE_AMOUNT",250);
define("MAX_POST_SIZE_SAFE_MODE",512000);
define("MAX_UPLOAD_SIZE_SAFE_MODE",200000);
define("MAX_MAIL_PER_DAY",3);
define("MAX_RATES_PER_DAY",3);
define("MAX_LOGIN_ATTEMPTS",5);
define("ACTIVE_TIME",1800);
define("ALLOCATION_MODE_ALL",1);
define("CALLER_TYPE_INTERNAL","intern");
define("CALLER_TYPE_EXTERNAL","extern");
define("CALLER_TYPE_TRACK","track");
define("CONNECTION_ERROR_SPAN",45);
define("PERMISSION_FULL",2);
define("PERMISSION_NONE",0);
define("PERMISSION_VOID",-1);
define("PERMISSION_MESSAGES",0);
define("PERMISSION_RATINGS",1);
define("PERMISSION_CHATS",2);
define("CHAT_CLOSED",1);
define("CHAT_DECLINED",0);
define("CHAT_STATUS_OPEN",0);
define("CHAT_STATUS_WAITING",1);
define("CHAT_STATUS_ACTIVE",2);
define("USER_STATUS_ONLINE",0);
define("USER_STATUS_BUSY",1);
define("USER_STATUS_OFFLINE",2);
define("USER_STATUS_AWAY",3);
define("USER_TYPE_INTERN",1);
define("USER_LEVEL_ADMIN",1);
define("GROUP_STATUS_AVAILABLE",0);
define("GROUP_STATUS_BUSY",1);
define("GROUP_STATUS_UNAVAILABLE",2);
define("POST_ACTION_VALUE_SPLITTER","<<>>");
define("POST_ACTION_ADD",0);
define("POST_ACTION_EDIT",1);
define("POST_ACTION_REMOVE",2);
define("DATA_RESPONSE_TYPE_STATIC",2);
define("DATA_RESPONSE_TYPE_BASIC",1);
define("DATA_RESPONSE_TYPE_KEEP_ALIVE",0);
define("GROUP_EVERYONE_INTERN","everyoneintern");
define("GROUP_EVERYONE_EXTERN","everyoneextern");
define("BROWSER_TYPE_BROWSER",0);
define("BROWSER_TYPE_CHAT",1);
define("RESOURCE_TYPE_FILE_INTERNAL",3);
define("RESOURCE_TYPE_FILE_EXTERNAL",4);
define("LOGIN_REPLY_BAD_COMBINATION",0);
define("LOGIN_REPLY_SUCCEEDED",1);
define("LOGIN_REPLY_ALREADY_ONLINE",2);
define("LOGIN_REPLY_CHANGE_PASS",5);
define("LOGIN_REPLY_NOADMIN",9);
define("LOGIN_REPLY_DEACTIVATED",10);
define("LOGIN_REPLY_IDLE",11);
define("LOGIN_REPLY_DB",13);
define("FILTER_EXERTION_BLACK",0);
define("FILTER_EXERTION_WHITE",1);
define("FILTER_TYPE_ACTIVE",1);
define("FILTER_TYPE_INACTIVE",0);
define("FLOOD_PROTECTION_SESSIONS",15);
define("FLOOD_PROTECTION_TIME",60);
define("CONFIG_LIVEZILLA_GEO","https://ssl.livezilla.net/geo/resolute/");
define("CONFIG_LIVEZILLA_FAQ","http://www.livezilla.net/faq/");
define("EXTERN_ACTION_RELOAD_GROUPS","reloadgroups");
define("EXTERN_ACTION_LISTEN","listen");
define("EXTERN_ACTION_MAIL","mail");
define("EXTERN_ACTION_RATE","rate");
define("INTERN_ACTION_LISTEN","listen");
define("INTERN_ACTION_LOGIN","login");
define("INTERN_ACTION_SET_MANAGEMENT","update_management");
define("INTERN_ACTION_SET_CONFIG","set_config");
define("INTERN_ACTION_DATABASE_TEST","database_test");
define("INTERN_ACTION_CREATE_TABLES","create_tables");
define("INTERN_ACTION_INIT_UPLOAD","init_upload");
define("INTERN_ACTION_SEND_FILE","send_file");
define("INTERN_ACTION_SEND_TEST_MAIL","send_test_mail");
define("INTERN_ACTION_REMOVE_FILE","remove_file");
define("INTERN_ACTION_SET_AVAILABILITY","set_availability");
define("INTERN_ACTION_SET_IDLE","set_idle");
define("INTERN_ACTION_GET_BANNER_LIST","get_banner_list");
define("INTERN_ACTION_SEND_RESOURCES","send_resources");
define("INTERN_ACTION_DOWNLOAD_TRANSLATION","download_translation");
define("XML_CLIP_NULL","N");
define("DATABASE_DATA","data");
define("DATABASE_INFO","info");
define("DATABASE_CHATS","chats");
define("DATABASE_INTERNAL","internal");
define("DATABASE_RESOURCES","resources");
define("DATABASE_PREDEFINED","predefined");
define("DATABASE_ROOMS","chat_rooms");
define("DATABASE_POSTS","chat_posts");
define("DATABASE_RATINGS","ratings");
define("DATABASE_LOGINS","logins");
define("DATABASE_PROFILES","profiles");
define("DATABASE_PROFILE_PICTURES","profile_pictures");
define("DATABASE_TICKETS","tickets");
define("DATABASE_TICKET_MESSAGES","ticket_messages");
define("DATABASE_TICKET_EDITORS","ticket_editors");
define("DATABASE_EVENTS","events");
define("DATABASE_EVENT_ACTIONS","event_actions");
define("DATABASE_EVENT_ACTION_RECEIVERS","event_action_receivers");
define("DATABASE_EVENT_ACTION_INVITATIONS","event_action_invitations");
define("DATABASE_EVENT_ACTION_SENDERS","event_action_senders");
define("DATABASE_EVENT_ACTION_WEBSITE_PUSHS","event_action_website_pushs");
define("DATABASE_EVENT_ACTION_INTERNALS","event_action_internals");
define("DATABASE_EVENT_TRIGGERS","event_triggers");
define("DATABASE_EVENT_URLS","event_urls");
define("DATABASE_CHAT_REQUESTS","chat_requests");
define("DATABASE_ALERTS","alerts");
define("DATABASE_WEBSITE_PUSHS","website_pushs");
?>