#!/bin/bash
 
for DIR in $(find ./maven-repo -type d); do
  (
    echo "<html><body><h1>Directory listing</h1><hr/><pre>"
    ls -1pa "${DIR}" | grep -v "^\./$" | grep -v "^index\.html$" | awk '{ printf "<p><a href=\"%s\">%s</a></p>",$1,$1 }'
    echo "</pre></body></html>"
  ) > "${DIR}/index.html"
done
