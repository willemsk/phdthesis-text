 #!/bin/bash

 file="$1"
 for page in $(identify -density 12 -format '%p ' "$file") ; do
     if convert "$file[$((page-1))]" -colorspace RGB -unique-colors txt:- | sed -e 1d | egrep -q -v ': \(\s*([0-9]*),\s*\1,\s*\1' ; then
         echo $page
     fi
 done
