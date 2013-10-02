# Description:
#   Auth allows you to assign roles to users which can be used by other scripts
#   to restrict access to Hubot commands
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_AUTH_ADMIN - A comma separate list of user IDs
#
# Commands:
#   hubot <user> has <role> role - Assigns a role to a user
#   hubot <user> doesn't have <role> role - Removes a role from a user
#   hubot what role does <user> have - Find out what roles are assigned to a specific user
#   hubot who has admin role - Find out who's an admin and can assign roles
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
#   alexwilliamsca, tombell

process.env['HUBOT_AUTH_ADMIN'] = 'mikeumus'
process.env['HUBOT_IRC_SERVER'] = irc.freenode.net
process.env['HUBOT_IRC_ROOMS'] = '#pibo-irc'
process.env['HUBOT_IRC_NICK'] = 'hubot'
process.env['HUBOT_IRC_UNFLOOD'] = 'true'
