# Windows - File Searching

## Quick Reference
- **File Explorer**: Ctrl+F → Search
- **Start Menu**: Type search term
- **PowerShell**: `Get-ChildItem`, `Select-String`

## File Explorer Search
1. **Open File Explorer** (Win+E)
2. **Navigate** to folder or use "This PC"
3. **Press Ctrl+F** or click search box
4. **Enter search term** in search box
5. **Use search filters** (Date modified, Size, Type, etc.)

## Start Menu Search
1. **Press Win key** (or click Start button)
2. **Type search term** - searches files, apps, settings
3. **Use arrow keys** to navigate results
4. **Press Enter** to open selected item

## PowerShell Commands
```powershell
# Find files by name
Get-ChildItem -Recurse -Name "*.txt"

# Find files by content
Select-String -Path "*.txt" -Pattern "search_term"

# Find files by type
Get-ChildItem -Recurse -Include "*.pdf"

# Search with Windows Search
Get-ChildItem -Recurse | Where-Object {$_.Name -like "*search_term*"}

# Find large files
Get-ChildItem -Recurse | Where-Object {$_.Length -gt 100MB}
```

## Advanced File Explorer Search
- **Use search operators**: `size:>10MB`, `date:today`, `type:pdf`
- **Save searches**: File → Save Search
- **Indexed locations**: Faster searches in indexed folders

## Tips
- **Start Menu** is fastest for general file search
- **File Explorer** is best for folder-specific searches
- **PowerShell** is most powerful for complex searches
- **Use quotes** for exact phrases in searches
- **Enable indexing** for faster searches
