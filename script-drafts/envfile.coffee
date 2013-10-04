# Description:
#   Set Hubot environent varibales.
#   Limited to HUBOT_* for security.
#   Modify env vars via env.js 
#
# Dependencies:
#   None
#
# Configuration:
#   FILE_BRAIN_PATH
#
# Commands:
#   hubot setenv HUBOT_AWESOME true - set the environment variable HUBOT_AWESOME to true
#   hubot getenv HUBOT_AWESOME      - return the value of the environment variable HUBOT_AWESOME
#
# Author:
#   mikeumus
#   pepijndevos - forefather of setenv script
#   dustyburwell - forefather of file-brain script

fs   = require 'fs' # file-brain
path = require 'path' # file-brain

module.exports = (robot) ->
  envPath = process.env.FILE_BRAIN_PATH or '/var/hubot' # file-brain
  envPath = path.join envPath, 'env.json' # file-brain
  robot.respond /setenv (HUBOT_[A-Z_]+) (.*)/, (msg) -> # setenv
    env = msg.match[1]
    val = msg.match[2] 
    process.env[env] = val; 
    
    # Check is file exists, if so, merge their data and write the new version of the file. 
    try # file-brain
        data = fs.readFileSync envPath, 'utf-8'
        if data
          robot.brain.mergeData JSON.parse(data)
    catch error
      console.log('Unable to read file', error) unless error.code is 'ENOENT'
    
    fs.writeFileSync envPath, JSON.stringify(data), 'utf-8'
    msg.reply "Setting " + env + " to " + val + "." 
    msg.reply "Saving " + env + " to " + val + " in env.json" 

  robot.respond /getenv (HUBOT_[A-Z_]+)/, (msg) -> # setenv
    msg.reply(process.env[msg.match[1]]) 
    

  ### robot.brain.on 'save', (data) ->  # file-brain
    fs.writeFileSync envPath, JSON.stringify(data), 'utf-8' ###
