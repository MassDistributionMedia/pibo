# `hubot script-test <scriptName>` - Cmd to check if script exists via the following tests (as a active script(not including scripts in script-draft/script-incubator folders):
#  `hubot show ear dropping` - Show what hubot is ear dropping on
#  Checks in /scripts and /node_modules/hubot-scripts/
#  If the script doesn't exist the command outputs suggested similar scripts based on those script's meta versus the tested script's meta. 
#  Model a test vector after hubot-control's "install missing Hubot dependencies" feature here: https://github.com/spajus/hubot-control#usage