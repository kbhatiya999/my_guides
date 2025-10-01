# Android - File Searching

## Quick Reference
- **File Manager**: Open app → Search icon
- **Google Files**: Built-in search
- **ADB**: `adb shell find`

## File Manager App
1. **Open File Manager** (varies by device)
2. **Tap search icon** (usually magnifying glass)
3. **Enter search term** in search box
4. **Browse results** by tapping files
5. **Use filters** if available (Date, Size, Type)

## Google Files App
1. **Open Google Files** app
2. **Tap search icon** at top
3. **Type search term** in search box
4. **Tap file** to open or manage
5. **Use categories** (Images, Videos, Documents, etc.)

## ADB Commands (Developer)
```bash
# Find files by name
adb shell find /sdcard -name "*.txt"

# Find files by type
adb shell find /sdcard -name "*.pdf"

# Find large files
adb shell find /sdcard -size +100M

# Search in specific directory
adb shell find /sdcard/Download -name "*search_term*"

# Find files by content (if supported)
adb shell grep -r "search_term" /sdcard
```

## Third-Party File Managers
- **ES File Explorer**: Advanced search options
- **Solid Explorer**: Material design with search
- **FX File Explorer**: Powerful search capabilities

## Tips
- **Google Files** is most user-friendly
- **Built-in File Manager** varies by manufacturer
- **ADB** is most powerful for developers
- **Use specific file extensions** for better results
- **Check permissions** for file access
