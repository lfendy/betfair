def runnerId($x):
    $x
    |.description.metadata.runnerId;

def runnerName($x):
    $x
    |.description.runnerName;

def firstBackLay($x):
    $x
    |.exchange.availableToBack[0] as $back
    |$x
    |.exchange.availableToLay[0] as $lay
    | $back.price, $back.size, $lay.price, $lay.size;

def matchTime($x):
    $x
    |.marketNodes[0].description.marketTime;

def tocsv($x):
    $x
    |.eventTypes[0].eventNodes
    | (now | todate) as $now

    # CSV headers
    |[
      "eventId",
      "eventName",
      "player1 id",
      "player2 id",
      "player1 name",
      "player2 name",
      "player1 back price",
      "player1 back size",
      "player1 lay price",
      "player1 lay size",
      "player2 back price",
      "player2 back size",
      "player2 lay price",
      "player2 lay size",
      "match time",
      "scrape time"
     ],

     # Variable assignments
     map(
        . as $event
        | .marketNodes[0].runners[0] as $player1
        | .marketNodes[0].runners[1] as $player2
        | $event
        |

     # Rendering CSV Rows
     [
      .eventId,
      .event.eventName,
      runnerId($player1),
      runnerId($player2),
      runnerName($player1),
      runnerName($player2),
      firstBackLay($player1),
      firstBackLay($player2),
      matchTime(.),
      $now
     ])[] | @csv
    ;

tocsv(.)


