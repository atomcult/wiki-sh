wiki(1)

# NAME
wiki - interrogate plaintext wiki directories

# SYNOPSIS
*wiki* -h

*wiki* -V

*wiki* [_options_...] [_query_]

# DESCRIPTION
*wiki* allows search of both filenames and file contents in a wiki directory.

## OPTIONS
*--help, -h*
	Print usage

*--version, -V*
	Print version

*--path* _path_
	Specify path to wiki directory

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

*WIKI_INBOX*

*WIKI_TEMPLATE_PATH*

*WIKI_PAGER_CMD*

*WIKI_PAGER_OPTS*

*WIKI_PREVIEW_CMD*

*WIKI_PREVIEW_OPTS*

*WIKI_GREP_OPTS*

# BUGS
Please submit bugs to _https://github.com/atomcult/wiki-sh_

# AUTHORS
Maintained by Lauren Brock <that-lauren@proton.me>

