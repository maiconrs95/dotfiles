# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# programs
# also/or do this:
if [ ! -d "$HOME/bin" ]; then
  mkdir ~/bin
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
for file in ~/.{bash_prompt,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;