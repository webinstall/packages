---
title: modernutils
homepage: https://webinstall.dev/modernutils
tagline: |
  modern alternatives for the old Unix utilities
---

## Meta-Installer

`modernutils` is a shortcut for the following:

`webi bat curlie fd fzf jq lsd rg sd node ssh-pubkey`

## Cheat Sheet

> `modernutils` is a meta-package for many popular utilities

| Modern                   | Desc                                   | Drop-in | Unix / coreutils |
| ------------------------ | -------------------------------------- | ------- | ---------------- |
| [bat][bat]               | output file with highlighting          | Y       | cat              |
| [curlie][curlie]         | http requests with syntax highlighting | Y       | curl             |
| [fd][fd]                 | file and directory search              | -       | find             |
| [fzf][fzf]               | live fuzzy searching                   | -       | find, grep       |
| [jq][jq]                 | JSON query                             | -       | -                |
| [lsd][lsd]               | list directories with colors and icons | Y       | ls, tree         |
| [rg][rg]                 | git-aware code searching               | Y       | grep             |
| [sd][sd]                 | JavaScript-style RegExp Find & Replace | -       | sed, awk         |
| [node][node]             | general-purpose system scripting       | -       | python, perl     |
| [ssh-pubkey][ssh-pubkey] | shows your ssh public key              | -       | ssh-keygen       |

[bat]: https://webinstall.dev/bat
[curlie]: https://webinstall.dev/curlie
[fd]: https://webinstall.dev/fd
[fzf]: https://webinstall.dev/fzf
[jq]: https://webinstall.dev/jq
[lsd]: https://webinstall.dev/lsd
[rg]: https://webinstall.dev/rg
[sd]: https://webinstall.dev/sd
[node]: https://webinstall.dev/node
[ssh-pubkey]: https://webinstall.dev/ssh-pubkey

## Aliases

Many of these utilities are compatible drop-in replacements for their coreutils
/ Unix counterparts.

For the sake of scripting, it's probably best to rely on the original Unix
utilties, but for day-to-day command line usage in your own shell, you may wish
to `alias` the modern utils to their Unix counterparts:

```bash
alias cat='bat'
alias curl='curlie'
alias grep='rg'
alias ls='lsd -F'
alias ll='lsd -lAhF'
alias la='lsd -AF'
alias tree='lsd --tree'
```
