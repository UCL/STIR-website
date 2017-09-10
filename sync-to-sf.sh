#! /bin/sh
rsync --exclude .git\* --exclude previous --exclude \*.lnk --exclude sync-to-sf.sh --exclude \*stackdump -auOCzv ./ krthie,stir@web.sf.net:htdocs/ $*
