import irc, os

var client =  newIrc(address = "irc.freenode.net", joinChans = @["#sealevel1"], nick = "neptunebot")
client.connect()

while true:
  var event: TIRCEvent
  if client.poll(event):
    echo event.params

  sleep 10
