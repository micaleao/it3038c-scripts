#!/bin/bash
# This script will query covid data and display it

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)
POSITIVE=$(echo $DATA | jq '.[0].positive')
NEGATIVE=$(echo $DATA | jq '.[0].negative')
DEATH=$(echo $DATA | jq '.[0].death')
HOSPITALIZED=$(echo $DATA | jq '.[0].hospitalizedCumulative')
DEATHINC=$(echo $DATA | jq '.[0].deathIncrease')
POSINC=$(echo $DATA | jq '.[0].positiveIncrease')
NEGINC=$(echo $DATA | jq '.[0].negativeIncrease')
TODAY=$(date)

echo "On $TODAY, there were $POSITIVE positive cases, $NEGATIVE negative tests, $DEATH deaths and $HOSPITALIZED hospitalized. There is an increase of $POSINC positive cases, $NEGINC negative tests and $DEATHINC deaths."
