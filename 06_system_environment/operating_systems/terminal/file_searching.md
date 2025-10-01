# Terminal - File Searching

## Quick Reference
- **find**: Search by name, type, size
- **grep**: Search by content
- **locate**: Fast database search
- **ripgrep**: Modern grep alternative

## Basic Commands
```bash
# Find files by name
find . -name "*.txt"

# Find files by content
grep -r "search_term" .

# Find files by type
find . -type f -name "*.pdf"

# Find directories
find . -type d -name "folder_name"

# Find large files
find . -size +100M
```

## Advanced find Commands
```bash
# Find files modified in last 7 days
find . -mtime -7

# Find files by permissions
find . -perm 755

# Find empty files
find . -empty

# Find files by owner
find . -user username

# Find files by group
find . -group groupname
```

## grep Commands
```bash
# Search with case insensitive
grep -i "search_term" file.txt

# Search with line numbers
grep -n "search_term" file.txt

# Search multiple files
grep "search_term" *.txt

# Search with context
grep -C 3 "search_term" file.txt

# Search with regex
grep -E "pattern1|pattern2" file.txt
```

## Modern Alternatives
```bash
# ripgrep (faster than grep)
rg "search_term" .

# fd (faster than find)
fd "*.txt"

# fzf (fuzzy finder)
fzf

# ag (silver searcher)
ag "search_term"
```

## Tips
- **find** is most comprehensive for file attributes
- **grep** is best for content searching
- **locate** is fastest for name searches
- **Use quotes** for exact phrases
- **Combine commands** with pipes for complex searches
