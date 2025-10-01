# Mac - File Searching

## Quick Reference
- **Finder**: Cmd+F → Search
- **Spotlight**: Cmd+Space → Type search term
- **Terminal**: `find`, `grep`, `locate`

## Finder Search
1. **Open Finder** (Cmd+Space → "Finder")
2. **Navigate** to folder or use "All My Files"
3. **Press Cmd+F** or click search icon
4. **Enter search term** in search box
5. **Use filters** (Kind, Date, Size, etc.)

## Spotlight Search
1. **Press Cmd+Space** (or click Spotlight icon)
2. **Type search term** - searches files, apps, emails, etc.
3. **Use arrow keys** to navigate results
4. **Press Enter** to open selected item

## Terminal Commands
```bash
# Find files by name
find . -name "*.txt"

# Find files by content
grep -r "search_term" .

# Find files by type
find . -type f -name "*.pdf"

# Search with Spotlight from terminal
mdfind "search_term"

# Find large files
find . -size +100M
```

## Advanced Finder Search
- **Use search operators**: `kind:pdf`, `date:today`, `size:>10MB`
- **Save searches**: File → Save Search
- **Smart folders**: Automatically update search results

## Tips
- **Spotlight** is fastest for general file search
- **Finder** is best for folder-specific searches
- **Terminal** is most powerful for complex searches
- **Use quotes** for exact phrases in searches
