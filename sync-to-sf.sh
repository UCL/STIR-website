#! /bin/sh
rsync --exclude .git\* --exclude previous --exclude \*.lnk --exclude sync-to-sf.sh --exclude \*stackdump -auOCzv ./ krthie@web.sf.net:/home/project-web/stir/htdocs/ $*
