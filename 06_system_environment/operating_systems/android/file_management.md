# Android - File Management

## Quick Reference
- **File Manager**: Long press → Copy/Move/Delete
- **Google Files**: Built-in file operations
- **ADB**: `cp`, `mv`, `rm` commands

## File Manager App
1. **Select files**: Long press → tap additional files
2. **Copy**: Tap copy icon → navigate → tap paste
3. **Move**: Tap move icon → select destination → tap move
4. **Delete**: Tap delete icon → confirm
5. **Rename**: Long press → Rename option

## Google Files App
1. **Select files**: Long press → tap additional files
2. **Copy**: Tap copy icon → navigate → tap paste
3. **Move**: Tap move icon → select destination → tap move
4. **Delete**: Tap delete icon → confirm
5. **Create folder**: Tap + icon → New folder

## ADB Commands (Developer)
```bash
# Copy files
adb shell cp /sdcard/file.txt /sdcard/destination/

# Move files
adb shell mv /sdcard/file.txt /sdcard/destination/

# Delete files
adb shell rm /sdcard/file.txt

# Create directory
adb shell mkdir /sdcard/new_folder

# Copy directory recursively
adb shell cp -r /sdcard/folder/ /sdcard/destination/

# Delete directory
adb shell rm -rf /sdcard/folder/
```

## Third-Party File Managers
- **ES File Explorer**: Advanced file operations
- **Solid Explorer**: Material design with dual panels
- **FX File Explorer**: Powerful file management

## Tips
- **Google Files** is most user-friendly
- **Built-in File Manager** varies by manufacturer
- **ADB** is most powerful for developers
- **Use cloud storage** for backup
- **Check permissions** for file access
- **Empty trash** regularly to free space
