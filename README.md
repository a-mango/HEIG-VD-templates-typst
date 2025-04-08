# HEIG-VD Typst templates

## Installation

Symlink the templates you wish to use to your `~/.local/share/typst/packages/local` folder:

```bash
TYPSTDIR="$HOME/.local/share/typst/packages/local"
mkdir -p $TYPSTDIR
ln -s heig-vd-summary $TYPSTDIR/heig-vd-summary
ln -s heig-vd-notes $TYPSTDIR/heig-vd-notes
ln -s heig-vd-report $TYPSTDIR/heig-vd-report
```

## Usage

The use the templates, add the following preamble to your Typst document:

```typst
#import "@local/heig-vd-summary:1.0.0": * // This also imports a few useful macros
#show: conf.with(
  title: "Document title",
  author: "Document author",
  institution: "ISCS, HEIG-VD",
  date: "2025-05-05",
)
```

_Tip_: don't forget to set the writing language as it's not done by default:

```typst
#set text(lang: "fr")
```

## Contributing

Issues, requests for improvements and PRs to the project are welcome.
