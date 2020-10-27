pacman -Syu build-essential curl git libgmp-dev libffi-dev libncurses-dev libtinfo5 zlib1g-dev
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
ghcup install 8.6.5
ghcup set 8.6.5
ghc --version
cabal v2-update
cabal v2-install ghcid
