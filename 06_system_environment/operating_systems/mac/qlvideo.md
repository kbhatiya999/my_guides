# Mac - View Video Dimensions in Finder

## Quick Reference
- **Type**: QuickLook Generator (not a Finder extension)
- **Goal**: See video dimensions (resolution) in Finder list view
- **Installation**: `brew install qlvideo`
- **View in Finder**: List view → Video → Right-click columns → Enable "Dimensions"
- **Limited support**: WEBM may not work reliably - use alternatives below

## What is QLVideo?

QLVideo is a **QuickLook generator** (`.qlgenerator` plugin) that extends macOS QuickLook to support video file previews and metadata. It's installed in `~/Library/QuickLook/` and works automatically with Finder's preview system.

**Note**: This is different from a Finder extension (which adds context menu items). QLVideo enhances QuickLook previews and thumbnails.

## How to View Video Dimensions in Finder

### Step 1: Install QLVideo
```bash
brew install qlvideo
qlmanage -r  # Reload QuickLook
```

### Step 2: Enable Dimensions Column
1. Open Finder
2. Navigate to folder with videos
3. Switch to **List view** (Cmd+2)
4. Right-click column headers
5. Check **"Dimensions"** or **"Video Dimensions"**
6. Column now shows resolutions (e.g., "1920x1080")

### Step 3: Sort by Dimensions
- Click **Dimensions** column header to sort
- Click again to reverse sort

## Usage Tips

### QuickLook Preview
- **Select** video → Press **Space** to preview
- Shows dimensions in preview window

### Supported Formats
- **Works well**: `.mkv`, `.avi`, `.flv`, `.asf`, `.rm`, `.wmv`
- **Limited/Problematic**: `.webm` (may not show dimensions depending on codec)
  - WebM with VP8 codec: Usually works
  - WebM with VP9 codec: May not work
  - WebM with AV1 codec: Not supported

### Troubleshooting
```bash
# If dimensions don't show
qlmanage -r

# Check installation (lists all QuickLook generators)
qlmanage -m plugins

# Verify QLVideo is installed
ls ~/Library/QuickLook/QLVideo.qlgenerator
# or
ls /Library/QuickLook/QLVideo.qlgenerator
```

## Troubleshooting WEBM Files

QLVideo has limited WebM support. If dimensions don't show for `.webm` files:

### Check WebM Codec
```bash
# Check which codec your webm file uses
ffprobe -v error -select_streams v:0 -show_entries stream=codec_name file.webm
```

### Solution: Use Terminal Instead
```bash
# Get dimensions for webm files (most reliable)
ffprobe -v quiet -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 file.webm

# For all webm files in folder
find . -name "*.webm" -exec echo "{}" \; -exec ffprobe -v quiet -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 {} \;
```

## Alternatives (Especially for WebM)

### Method 1: FFprobe (Best for WebM)
```bash
# Single file
ffprobe -v quiet -select_streams v:0 -show_entries stream=width,height -of csv=p=0 file.webm

# All videos in folder
for f in *.webm; do echo "$f: $(ffprobe -v quiet -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 "$f")"; done
```

### Method 2: MediaInfo (Detailed)
```bash
brew install mediainfo
mediainfo --Output="Video;%Width%x%Height%" file.webm
```

### Method 3: ExifTool
```bash
brew install exiftool
exiftool -VideoWidth -VideoHeight file.webm
```

## Tips
- **For WebM**: Use terminal alternatives (ffprobe) for reliable results
- **For other formats**: QLVideo works well for MKV, AVI, FLV
- **First scan**: May be slow - thumbnails are cached after first run
- **macOS**: Works with 10.13+ (High Sierra and later)
- **If dimensions blank**: Right-click column header → Sort may help populate data
