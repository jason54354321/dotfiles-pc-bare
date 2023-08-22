# dotfiles-pc-bare
PC dotfiles using bare repository

## Issue:
* `.config/nvim` could not be added to the bare repository.
  
  > Solution: Delete `.git/` folder in `.config/nvim`
  > > Consequence: All the earlier commits will be deleted.
