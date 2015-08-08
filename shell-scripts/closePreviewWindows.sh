osascript <<EOF
tell application "Preview"
    set windowCount to number of windows
    repeat with x from 1 to windowCount
            close window x
    end repeat
end tell
EOF
