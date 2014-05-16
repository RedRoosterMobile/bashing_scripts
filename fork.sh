#!/bin/bash
. ./functions.sh

step "Sleeping bad"
try phing  >/dev/null 2>&1
next
step "Sleeping good"
try cd / >/dev/null 2>&1
next