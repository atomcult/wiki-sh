wiki(1)

# NAME
wiki - interrogate plaintext wiki directories

# SYNOPSIS
*wiki* -h

*wiki* [_options_...] [_query_]

# DESCRIPTION
*wiki* reads paths in *WIKI_PATH* and allows search of both filenames and file
contents.

## OPTIONS
*--help, -h*
	Print usage

*--path* _path_
	Specify path to look for wikis

*--new, -n* _name_
	Create a new entry

*--inbox, -I* _path_
	Set the path where new entries are created

*--grep, -g* _query_
	Search file contents for the specified query

*--grep-opts* _options_
	Pass in options to grep

*--pager, -p* _command_
	Opens files with the specified command

*--pager-opts* _options_
	Pass in options to the pager command

*--preview, -P* _command_
	Previews files with the specified command

*--preview-opts* _options_
	Pass in options to the preview command

# ENVIRONMENT
*WIKI_PATH*

*WIKI_PAGER*

*WIKI_PAGER_OPTS*

*WIKI_PREVIEW*

*WIKI_PREVIEW_OPTS*

*WIKI_GREP_OPTS*

# BUGS
Please submit bugs to _https://github.com/atomcult/wiki-sh_

# AUTHORS
Maintained by Lauren Brock <that-lauren@proton.me>

