goodbyes = [
    "Bye, {name}.",
    "Bye Bye, {name}.",
    "Take care, {name}.",
    "Peace, {name}.",
    "Cya.",
    "Peace.",
    "Ok.", "Okay, I'll have all the work on your desk by morning sir!",
    "Sir.", "Roger {robot.name}."
    ]
    
goodbye = (name) ->
    index = parseInt(Math.random() * goodbyes.length)
    message = goobyes[index]
    message.replace(/{name}/, name);

module.exports = (robot) ->
    robot.hear /(bye|later|peace|audios|chow|cya),?\s(.*)/i, (msg) ->
        if robot.name.toLowerCase() == msg.match[2].toLowerCase()
            byeMessage = goodbye(msg.message.user.name)
            msg.send(byeMessage)