#!/bin/bash

URL="https://www.guvi.i"

RES_CODE=$(curl -s -I "$URL" | grep HTTP | awk '{print $2}')

echo "HTTP_Response : $RES_CODE"

if [ -z "$RES_CODE" ]; then
	echo "The response code is empty: Invalid URL"
elif [ "$RES_CODE" -eq 200 ]; then
        echo "The request was success : $RES_CODE"
else
	echo "The request is failed : $RES_CODE"
fi

