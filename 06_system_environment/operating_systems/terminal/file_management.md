# Terminal - File Management

## Quick Reference
- **cp**: Copy files and directories
- **mv**: Move/rename files and directories
- **rm**: Remove files and directories
- **mkdir**: Create directories

## Basic Commands
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

# Copy with verbose output
cp -v file.txt destination/
```

## Safety Commands
```bash
# Interactive delete (ask before each file)
rm -i file.txt

# Interactive move
mv -i file.txt destination/

# Copy with backup
cp -b file.txt destination/

# Move with backup
mv -b file.txt destination/

# Create backup before overwriting
cp --backup=numbered file.txt destination/
```

## Tips
- **Use Tab completion** for faster typing
- **Use -i flag** for interactive operations
- **Use -r flag** for recursive operations
- **Use -v flag** for verbose output
- **Use -p flag** to preserve permissions
- **Always double-check** before using rm -rf
