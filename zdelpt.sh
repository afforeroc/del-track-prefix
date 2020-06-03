#!/bin/bash
echo "Script tool that removes the most common track number prefixes for music and sound files"

# One digit
echo "Removing prefix: [0-9][space][hyphen][space]"
for f in ./*.*; do mv "$f" "${f/[0-9] - //}"; done; sleep 2
echo ""
echo "Removing [0-9][dot][space]"
for f in ./*.*; do mv "$f" "${f/[0-9]. //}"; done; sleep 2
echo ""
echo "Removing prefix: [0-9][dot]"
for f in ./*.*; do mv "$f" "${f/[0-9].//}"; done; sleep 2
echo ""
echo "Removing [0-9][underscore]"
for f in ./*.*; do mv "$f" "${f/[0-9]_//}"; done; sleep 2
echo ""

# Two digits
echo "Removing prefix: [0-9][0-9][space][hyphen][space]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9] - //}"; done; sleep 2
echo ""
echo "Removing [0-9][0-9][dot][space]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9]. //}"; done; sleep 2
echo ""
echo "Removing prefix: [0-9][0-9][dot]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9].//}"; done; sleep 2
echo ""
echo "Removing [0-9][0-9][underscore]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9]_//}"; done; sleep 2
echo ""
echo "Done"