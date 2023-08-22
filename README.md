# dotfiles-pc-bare
PC dotfiles using bare repository

## Issue:
`.config/nvim` could not be added to the bare repository.
> Solution: delete `.git/` folder in `.config/nvim`
> > Consequence: all the earlier commits will be deleted.
