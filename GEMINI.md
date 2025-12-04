# GEMINI.md

## Project Overview

This project is a command-line tool for managing a personal wiki. It's written in POSIX-compliant shell script and relies on external tools like `fzf` for fuzzy finding files and `grep` for searching within them. The tool is designed to be highly customizable through environment variables, allowing users to specify their preferred pager, previewer, and file manager.

The core functionality of the `wiki` script includes:

*   **Searching:** Quickly find wiki pages using `fzf` for interactive filtering and `grep` for content-based searches.
*   **Opening:** Open wiki pages in a user-defined pager (e.g., `less`, `vim`, `hx`).
*   **Creating:** Create new wiki pages.
*   **Customization:** Configure the tool's behavior using environment variables.

## Building and Running

### Dependencies

*   `fzf`: A command-line fuzzy finder.
*   `scdoc`: A tool for generating man pages.
*   A pager (e.g., `less`, `most`, `hx`).
*   A previewer (e.g., `cat`, `bat`).
*   A file manager (e.g., `tree`, `ls`).

### Installation

To install the `wiki` script and its man page, use the following command:

```sh
make PREFIX="${HOME}/.local" install
```

This will install the `wiki` executable to `${HOME}/.local/bin` and the man page to `${HOME}/.local/share/man/man1`.

To install only the executable, run:

```sh
make PREFIX="${HOME}/.local" install-bin
```

### Running

Before running the `wiki` script, you need to set the `WIKI_PATH` environment variable to the directory where your wiki pages are stored.

```sh
export WIKI_PATH="${HOME}/wiki"
wiki
```

You can also customize the pager, previewer, and other options by setting the corresponding environment variables. For example:

```sh
export WIKI_PAGER="hx"
export WIKI_PREVIEW="bat"
wiki
```

For more options and usage details, see the `README.md` file or run `wiki --help`.

### Note Templates
You can use a template for new notes by setting the `WIKI_TEMPLATE_PATH` environment variable. If this variable is set to a valid file, its contents will be used as the template for new notes created with the `--new` flag.

```sh
export WIKI_TEMPLATE_PATH="${HOME}/.config/wiki/template.md"
```

## Development Conventions

The project follows the POSIX shell script standard. The code is well-structured and uses clear variable names. The `Makefile` is used for installation and documentation generation. There are no explicit testing practices or contribution guidelines mentioned in the project.
