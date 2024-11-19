#!/bin/bash

# Action API

if false; then
wget -q -O - "https://www.mediawiki.org/w/api.php?action=query&list=search&srsearch=music&format=json&formatversion=2&origin=*"

wget -q -O - "https://www.mediawiki.org/w/api.php?action=query&list=search&srsearch=music&format=json&formatversion=2&origin=*&sroffset=10&continue=-||"

wget -q -O - "https://www.mediawiki.org/w/api.php?action=query&list=search&srsearch=music&format=json&formatversion=2&origin=*&sroffset=260&continue=-||"

#wget -q -O - "https://www.mediawiki.org/w/api.php?action=parse&format=json&formatversion=2&redirects&origin=*&prop=wikitext&pageid=76850406"

#wget -q -O - "https://www.mediawiki.org/w/api.php?action=parse&format=json&formatversion=2&redirects&origin=*&prop=text|wikitext&page=2024_Summer_Olympics_medal_table"

wget -q -O - "https://en.wikipedia.org/w/api.php?action=parse&format=json&formatversion=2&redirects&origin=*&prop=wikitext&pageid=76850406"

wget -q -O - "https://en.wikipedia.org/w/api.php?action=query&format=json&formatversion=2&origin=*&pageids=76850406&prop=revisions&rvslots=*&rvprop=content"
#wget -q -O - "https://www.mediawiki.org/w/api.php?action=query&format=json&formatversion=2&origin=*&pageids=76850406&prop=revisions&rvslots=*&rvprop=content"

echo "List all revisions"
wget -q -O - "https://en.wikipedia.org/w/api.php?action=query&format=json&formatversion=2&origin=*&pageids=76850406&prop=revisions&rvprop=ids&rvlimit=10" |
jq ".query.pages[].revisions[].revid"

echo "Get raw wikitext"
wget -q -O - "https://en.wikipedia.org/w/api.php?action=parse&format=json&formatversion=2&origin=*&pageid=76850406&prop=wikitext" |
jq -r ".parse.wikitext"

fi


# REST API

if false; then

echo "Get wiki page"
wget -q -O - "https://en.wikipedia.org/api/rest_v1/page/html/2024_Summer_Olympics_medal_table"

fi

echo "Get raw wikitext"
wget -O - "https://en.wikipedia.org/api/rest_v1/transform/html/to/wikitext/2024_Summer_Olympics_medal_table/1251725217"


