export PATH="./bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:$DOT/bin:$PATH"
export PATH="$HOME/.local/bin:/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
export PATH="/usr/local/cuda/bin:$PATH"
export PATH="/usr/local/texlive/2018/bin/x86_64-darwin:$PATH"

# ==> llvm
# To use the bundled libc++ please add the following LDFLAGS:
#   LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"

# llvm is keg-only, which means it was not symlinked into /usr/local,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.

# If you need to have llvm first in your PATH run:
#   echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.zshrc

# For compilers to find llvm you may need to set:
#   export LDFLAGS="-L/usr/local/opt/llvm/lib"
#   export CPPFLAGS="-I/usr/local/opt/llvm/include"


