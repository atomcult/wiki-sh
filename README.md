## Usage

```sh
# Add each wiki the tool should use
export WIKI_PATH="${HOME}/wiki/work:${HOME}/wiki/personal"

# Customize the command to open the files, and its options
export WIKI_PAGER="hx"
export WIKI_PAGER_OPTS=""

# Customize the command used to preview files
export WIKI_PREVIEW="bat"
export WIKI_PREVIEW_OPTS="--color=always"

# Add default arguments to grep when searching files
export WIKI_GREP_OPTS="-i"

# Run the command!
wiki

# Additional arguments are detailed in the help
wiki --help
```

## Installation

```sh
make PREFIX="${HOME}/.local" install-bin

# Optionally
make PREFIX="${HOME}/.local" install-docs
```
