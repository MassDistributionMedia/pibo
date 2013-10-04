# Description:
#   DocPad commands to create web pages with Hubot.
#
# Dependencies:
#   docpad
#
# Configuration:
#   none
#
# Commands:
#   docpad new page <name.html.eco> - Creates a new web page called name.html.eco
#
# Notes:
#   * Call the method: robot.auth.hasRole(msg.envelope.user,'<role>')
#   * returns bool true or false
#
#   * the 'admin' role can only be assigned through the environment variable
#   * roles are all transformed to lower case
#
#   * The script assumes that user IDs will be unique on the service end as to
#     correctly identify a user. Names were insecure as a user could impersonate
#     a user
#
# Author:
#   mikeumus

