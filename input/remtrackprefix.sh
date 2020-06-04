#!/bin/bash
echo "For all files:"

# One digit
echo "Removing [0-9][dot][space]"
for f in ./*.*; do mv "$f" "${f/[0-9]. //}"; done;
echo ""
echo "Removing prefix: [0-9][dot]"
for f in ./*.*; do mv "$f" "${f/[0-9].//}"; done;
echo ""
echo "Removing prefix: [0-9][space][hyphen][space]"
for f in ./*.*; do mv "$f" "${f/[0-9] - //}"; done;
echo ""
echo "Removing [0-9][underscore]"
for f in ./*.*; do mv "$f" "${f/[0-9]_//}"; done;
echo ""
echo "Removing [0-9][hyphen]"
for f in ./*.*; do mv "$f" "${f/[0-9]-//}"; done;
echo ""

# Two digits
echo "Removing [0-9][0-9][dot][space]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9]. //}"; done;
echo ""
echo "Removing prefix: [0-9][0-9][dot]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9].//}"; done;
echo ""
echo "Removing prefix: [0-9][0-9][space][hyphen][space]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9] - //}"; done;
echo ""
echo "Removing [0-9][0-9][underscore]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9]_//}"; done;
echo ""
echo "Removing [0-9][0-9][hyphen]"
for f in ./*.*; do mv "$f" "${f/[0-9][0-9]-//}"; done;
echo ""
echo "Done"