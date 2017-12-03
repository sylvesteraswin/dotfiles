# Sylvester Aswin's dotfiles

## Installation
**Warning** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don't want or need. Don't blindly use my setting unless you know what that entails. Use ar your own risk.

### Using Git and the bootstrap script
Clone the repo first
```bash
git clone git@github.com:sylvesteraswin/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repo and then:
```bash
source bootstrap.sh
```

Otherwise, to update while avoiding the confirmation promit
```bash
set -- -f; source bootstrap.sh
```

### Sensible macOS defaults
While setting up a new MAc, you may want to set some sensible macOS defaults:
```bash
./.macos
```