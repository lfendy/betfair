def tocsv($x):
    $x
    |.eventTypes[0].eventNodes
    |[
      ".eventId",
      ".event.eventName"
     ], map(
        . as $event
        | .marketNodes[0].runners[0] as $player1
        | .marketNodes[0].runners[1] as $player2
        | $event
        |
     [
      .eventId,
      .event.eventName,
      $player1.description.metadata.runnerId,
      $player2.description.metadata.runnerId
     ])[]
    ;

tocsv(.)


