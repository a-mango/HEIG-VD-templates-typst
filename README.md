# HEIG-VD Typst templates

This repository contains [Typst templates](https://typst.app/docs/tutorial/making-a-template/)
developed for documents produced at the
[School of Engineering and Management Vaud (HEIG-VD)](https://www.heig-vd.ch/).

## Installation

Either copy the templates manually or symlink the repository to the
`~/.local/share/typst/packages/local` folder:

```bash
TYPSTDIR="$HOME/.local/share/typst/packages"
mkdir -p $TYPSTDIR
ln -s <REPO_DIR> $TYPSTDIR/local
```

## Usage

The use the templates, add the following preamble to your Typst document:

```typst
#import "@local/common:1.0.0": *          // Import useful macros
#import "@local/heig-vd-summary:1.1.0": * // Import the template
#show: conf.with(
  title: "Document title",
  author: "Document author",
  institution: "ISCS, HEIG-VD",
  date: "2025-05-05",
)
```

**Tip**: don't forget to set the writing language if you're not using English:

```typst
#set text(lang: "fr")
```

## Contributing

Issues, requests for improvements and PRs are welcome.
