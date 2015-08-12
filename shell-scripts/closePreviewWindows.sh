osascript <<EOF
tell application "Preview"
    set windowCount to number of windows
    repeat with x from 1 to windowCount
            set docName to (name of document of front window)
            if (docName is equal to "Main Thesis Style.pdf") then
            close window x
            end if
    end repeat
end tell
EOF
