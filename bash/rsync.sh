#!/bin/bash

# Include/Exclude order for rsync > v3.0.6
rsync --verbose --progress --stats --human-readable \
	--recursive --compress --times \
	--itemize-changes --log-file=/path/to/log/$(date "+\%Y_\%m_\%d")_rsync.log \
	--include="*/" --include="*.alv" --exclude="*" \
	/path/to/src /path/to/dest
