# Mac - File Management

## Quick Reference
- **Finder**: Drag & drop, Cmd+C/V/X
- **Terminal**: `cp`, `mv`, `rm`, `mkdir`

## Finder Operations
1. **Copy**: Cmd+C → Cmd+V
2. **Move**: Drag & drop or Cmd+C → Cmd+Option+V
3. **Delete**: Cmd+Delete (moves to Trash)
4. **Rename**: Select file → Press Enter
5. **Create folder**: Cmd+Shift+N

## Terminal Commands
```bash
# Copy files
cp file.txt destination/

# Move files
mv file.txt destination/

# Delete files
rm file.txt

# Create directory
mkdir new_folder

# Copy directory recursively
cp -r folder/ destination/

# Move directory
mv folder/ destination/

# Delete directory
rm -rf folder/
```

## Advanced Operations
```bash
# Copy with progress
rsync -avh --progress source/ destination/

# Move with confirmation
mv -i file.txt destination/

# Create multiple directories
mkdir -p path/to/nested/folders

# Copy preserving permissions
cp -p file.txt destination/

# Move with backup
mv -b file.txt destination/
```

## Tips
- **Finder** is best for visual operations
- **Terminal** is most powerful for bulk operations
- **Use Tab completion** in terminal
- **Cmd+Z** undoes most Finder operations
- **Empty Trash** regularly to free space
