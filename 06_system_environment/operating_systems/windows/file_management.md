# Windows - File Management

## Quick Reference
- **File Explorer**: Ctrl+C/V/X, drag & drop
- **PowerShell**: `Copy-Item`, `Move-Item`, `Remove-Item`

## File Explorer Operations
1. **Copy**: Ctrl+C → Ctrl+V
2. **Move**: Drag & drop or Ctrl+C → Ctrl+X → Ctrl+V
3. **Delete**: Delete key (moves to Recycle Bin)
4. **Rename**: F2 or right-click → Rename
5. **Create folder**: Ctrl+Shift+N

## PowerShell Commands
```powershell
# Copy files
Copy-Item file.txt destination/

# Move files
Move-Item file.txt destination/

# Delete files
Remove-Item file.txt

# Create directory
New-Item -ItemType Directory -Name "new_folder"

# Copy directory recursively
Copy-Item -Recurse folder/ destination/

# Move directory
Move-Item folder/ destination/

# Delete directory
Remove-Item -Recurse folder/
```

## CMD Commands
```cmd
# Copy files
copy file.txt destination\

# Move files
move file.txt destination\

# Delete files
del file.txt

# Create directory
mkdir new_folder

# Copy directory recursively
xcopy folder\ destination\ /E

# Delete directory
rmdir /S folder\
```

## Tips
- **File Explorer** is best for visual operations
- **PowerShell** is most powerful for bulk operations
- **Use Tab completion** in PowerShell
- **Ctrl+Z** undoes most File Explorer operations
- **Empty Recycle Bin** regularly to free space
