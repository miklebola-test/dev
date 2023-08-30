#!/bin/bash
base_url="http://127.0.0.1:5000/"
expected_ans="<!DOCTYPE html>"
response=$(curl -s "$base_url")

if echo "$response" | grep -q  "$expected_substring"; then
    echo "All good"
else
    echo "Bad"
fi
