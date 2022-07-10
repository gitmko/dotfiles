#!/usr/bin/env bash

export temp=$(~/github/sct/xsct | sed s/"Screen 0: "// | sed s/"temperature ~ "//)
if [[ $temp == *"6500"* ]]; then
    echo "Day"
elif [[ $temp == *"4000"* ]]; then
    echo "Night"
else
    echo "None"
fi
