def execute_macos_defaults

  # Close any open System Preferences panes, to prevent them from overriding
  # settings we’re about to change
  `osascript -e 'tell application "System Preferences" to quit'`

  puts ''

  # Ask for the administrator password upfront
  `sudo -v`
  
  ######## General UI/UX
  ######################

  # Set computer name (as done via System Preferences → Sharing)
  `sudo scutil --set ComputerName "Neuromancer"`
  `sudo scutil --set HostName "Neuromancer"`
  `sudo scutil --set LocalHostName "Neuromancer"`
  `sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Neuromancer"`

  # Disable the sound effects on boot
  `sudo nvram SystemAudioVolume=" "`

  # Set sidebar icon size to medium
  `defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2`

  # Increase window resize speed for Cocoa applications
  `defaults write NSGlobalDomain NSWindowResizeTime -float 0.001`

  # Expand save panel by default
  `defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true`
  `defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true`

  # Expand print panel by default
  `defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true`
  `defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true`

  # Save to disk (not to iCloud) by default
  `defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false`

  # Automatically quit printer app once the print jobs complete
  `defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true`

  # Disable the “Are you sure you want to open this application?” dialog
  `defaults write com.apple.LaunchServices LSQuarantine -bool false`
  `/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user`

  # Disable automatic termination of inactive apps
  `defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true`

  # Disable the crash reporter
  `defaults write com.apple.CrashReporter DialogType -string "none"`

  # Set Help Viewer windows to non-floating mode
  `defaults write com.apple.helpviewer DevMode -bool true`

  # Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
  `sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName`

  # Disable Notification Center and remove the menu bar icon
  `launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null`

  # Disable automatic capitalization as it’s annoying when typing code
  `defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false`

  # Disable smart dashes as they’re annoying when typing code
  `defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false`

  # Disable automatic period substitution as it’s annoying when typing code
  `defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false`

  # Disable smart quotes as they’re annoying when typing code
  `defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false`

  # Disable auto-correct
  `defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false`

  ######## Trackpad, mouse, keyboard, Bluetooth accessories, and input
  ####################################################################

  # Trackpad: enable tap to click for this user and for the login screen
  `defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true`
  `defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1`
  `defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1`

  # Trackpad: map bottom right corner to right-click
  `defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2`
  `defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad rackpadRightClick -bool true`
  `defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1`
  `defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true`

  # Disable “natural” (Lion-style) scrolling
  `defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false`

  # Increase sound quality for Bluetooth headphones/headsets
  `defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40`

  # Enable full keyboard access for all controls
  # (e.g. enable Tab in modal dialogs)
  `defaults write NSGlobalDomain AppleKeyboardUIMode -int 3`

  # Disable press-and-hold for keys in favor of key repeat
  `defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false`

  # Set a blazingly fast keyboard repeat rate
  `defaults write NSGlobalDomain KeyRepeat -int 1`
  `defaults write NSGlobalDomain InitialKeyRepeat -int 10`

  # Set language and text formats
  `defaults write NSGlobalDomain AppleLanguages -array "en" "nl"`
  `defaults write NSGlobalDomain AppleLocale -string "en_GB@currency=EUR"`
  `defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"`
  `defaults write NSGlobalDomain AppleMetricUnits -bool true`

  # Show language menu in the top right corner of the boot screen
  `sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true`

  # Set the timezone; see `sudo systemsetup -listtimezones` for other values
  `sudo systemsetup -settimezone "Europe/Berlin" > /dev/null`

  # Stop iTunes from responding to the keyboard media keys
  `launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/nullT`

  ######## Energy saving
  ######################

  # Enable lid wakeup
  `sudo pmset -a lidwake 1`

  # Restart automatically if the computer freezes
  `sudo systemsetup -setrestartfreeze on`

  # Sleep the display after 15 minutes
  `sudo pmset -a displaysleep 15`

  # Disable machine sleep while charging
  `sudo pmset -c sleep 0`

  # Set machine sleep to 5 minutes on battery
  `sudo pmset -b sleep 5`

  # Set standby delay to 24 hours (default is 1 hour)
  `sudo pmset -a standbydelay 86400`

  # Never go into computer sleep mode
  `sudo systemsetup -setcomputersleep Off > /dev/null`

  # Hibernation mode
  # 0: Disable hibernation (speeds up entering sleep mode)
  # 3: Copy RAM to disk so the system state can still be restored in case of a
  #    power failure.
  `sudo pmset -a hibernatemode 0`

  # Remove the sleep image file to save disk space
  `sudo rm /private/var/vm/sleepimage`
  # Create a zero-byte file instead…
  `sudo touch /private/var/vm/sleepimage`
  # …and make sure it can’t be rewritten
  `sudo chflags uchg /private/var/vm/sleepimage`

  ######## Screen
  ###############

  # Require password immediately after sleep or screen saver begins
  `defaults write com.apple.screensaver askForPassword -int 1`
  `defaults write com.apple.screensaver askForPasswordDelay -int 0`

  # Save screenshots to the desktop
  `defaults write com.apple.screencapture location -string "${HOME}/Desktop"`

  # Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
  `defaults write com.apple.screencapture type -string "png"`

  # Disable shadow in screenshots
  `defaults write com.apple.screencapture disable-shadow -bool true`

  # Enable subpixel font rendering on non-Apple LCDs
  # Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
  `defaults write NSGlobalDomain AppleFontSmoothing -int 1`

  # Enable HiDPI display modes (requires restart)
  `sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true`

end
