curl 'https://www.betfair.com.au/www/sports/navigation/facet/v1/search?_ak=nzIFcwyWhrlwYMrh&alt=json'\
 -H 'Origin: https://www.betfair.com.au'\
 -H 'Accept-Encoding: gzip, deflate, br'\
 -H 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8'\
 -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'\
 -H 'content-type: application/json'\
 -H 'Accept: application/json'\
 -H 'Referer: https://www.betfair.com.au/exchange/plus/tennis?group-by=competition'\
 -H 'Connection: keep-alive'\
 --data-binary '{"filter":{"marketBettingTypes":["ASIAN_HANDICAP_SINGLE_LINE","ASIAN_HANDICAP_DOUBLE_LINE","ODDS"],"productTypes":["EXCHANGE"],"marketTypeCodes":["MATCH_ODDS","MATCH_ODDS_UNMANAGED","MONEYLINE","MONEY_LINE"],"selectBy":"RANK","contentGroup":{"language":"en","regionCode":"NZAUS"},"turnInPlayEnabled":true,"maxResults":0,"eventTypeIds":[2]},"facets":[{"type":"EVENT_TYPE","skipValues":0,"maxValues":10,"next":{"type":"COMPETITION","skipValues":0,"maxValues":5,"next":{"type":"EVENT","skipValues":0,"maxValues":10,"next":{"type":"MARKET","maxValues":1}}}}],"currencyCode":"AUD","locale":"en"}'\
 --compressed