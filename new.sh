#!/bin/bash
# A script to scaffold new weekly events.
# Run like: ./new.sh "Name of App"
TITLE=$1
DATE=`date +%Y-%m-%d`
DATE_TIME=`date "+%Y-%m-%d %H:%M:%S"`
TITLE_DASH=`echo $TITLE | sed 's/ /-/g'`
POST_PATH="_posts/$DATE-$TITLE_DASH.md"

cat << EOF > $POST_PATH
---
layout: post
title:  "$TITLE"
date:   $DATE_TIME
description: "My latest project."
categories: project $TITLE_DASH
---

## What did I make?

## How did I make it?

## How can you use it?

EOF

echo $POST_PATH
