# James Prime
# .bash_aliases

# List all files, including hidden ones
ls='ls -alF --color=always'

# Find top 5 largest files
findbig="find . -type f -exec ls -s {} \; | sort -n -r | head -5"

# Longlist of files
ll='ls -l'

# Adding prompts to most regular commands
cp='cp -iv'      # interactive, verbose
rm='rm -i'       # interactive
mv='mv -iv'      # interactive, verbose
grep='grep -i'   # ignore case

#qgulp='~/binX/qgulp'
