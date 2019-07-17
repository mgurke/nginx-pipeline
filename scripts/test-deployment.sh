#!/bin/bash
if (cat  ../keyval/keyval.properties | grep 'IP=' | awk '{print $2}' == $IP)
    {
    echo "all good"
    }
else {
    echo "error, IP doesn't match"
}