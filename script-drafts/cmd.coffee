# List of cmd's to train Hubot what to listen for and how to respond.
#
# Via eardropping.coffee:
#  "hubot when you hear <pattern> do <something hubot does>" - Setup a ear dropping event
#
# Author
#  mikeumus
#
#
# cmdArray # these need to do in the script's folder and in the script's package.json or cmd.json
##
###
  cmdNet = [
    {
      "name": "npm",
      "format": "npm version <name>",
      "tags": ["npm","version"],
      "test-vectors": "various,tests,used,against,cmd" - # To report it's health as a fraction of how many tests the cmd took and how many it passed.
      "intention": "Output npm version of submitted module name.",
      "scale": 1-10, # The scale of which users and Hubot rates itself on this task. Used in control-loop to iterate towards a better average rating for this task.
      "url": "https://raw.github.com/github/hubot-scripts/master/src/scripts/npm.coffee"
    },
    {
      "name": "reload",
      "format": "reload all scripts",
      "url": "https://raw.github.com/github/hubot-scripts/master/src/scripts/reload.coffee"
    },
  ]
###
##
#

# Indentifier eardropped to listen for commands
cmdPromt = "`" # or robot.name

cmdNet = [
    #(pattern,action) or #{pattern & action}
    # Backticks to indentify command 
    "npm version <name>", # via npm.coffee: hubot npm version <package name> - returns npm package version if it exists
    "restart", # via restart.coffee: 
]


module.exports = (robot) ->
    cmdList[i] = cmdNet.length
    for each cmd in cmdNet
        .exec(cmdNet[i])
        
    cmd(action)
        .exec(action)
        
        
# Notes
#  Top-Down/Vision
#   Train Hubot a list of commands to execute if it hears them in chatting.
#   Cmds are trained via eardropping.coffee
#   Cmds are save in arrays in a json format.
#   There can multiple cmd arrays trained.
#
#  To Do
#   script-list cmd via recycled code from reload.coffee
#   `cmdNet update` - cmd to check if all cmdNet commands are installed and functioning via various tests. 
#                   - if it passes any/all critial tests.
#   Use array mapping for indexing commands: http://www.joelonsoftware.com/items/2006/08/01.html
#
#
# cmdArray
#  url can be a git repo too: https://github.com/github/hubot-scripts/blob/master/src/scripts/github-commit-link.coffee
#   recycle github connecting from: https://github.com/github/hubot-scripts/blob/master/src/scripts/github-commit-link.coffee
#
#  
#
# ideas
#  script log
#   any error is added to a log file showing error outpt and timestamp.
#   `<scriptName> last error` - cmd responds with the scripts last error.
#   `<scriptName> list errors` - cmd to list all unique errors reporting how many times each error was seen in output.
#   `cmd for <short description of desired command outcome.>` - List commands with similar tags & semanticated versions of script descriptors.
#   Append "notes.md" to bottom of any script if the global script manager says so.
#    notes.md appendage can be set per script in the scripts header meta as well.
#    notes.md on save is compared to what's appended to the bottom of the script and compares overwriting either in favor of the newer version.
#    notes.md used for documentation as well (maybe via yui-docs).
#
#
#
#
#
#
#
#