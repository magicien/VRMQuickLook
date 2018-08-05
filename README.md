# GLTFQuickLook
macOS QuickLook plugin for VRM files. (.vrm)

## System Requirements

- macOS 10.13 (High Sierra) or later

## Install

### Using [Homebrew Cask](https://github.com/phinze/homebrew-cask)

- Run `brew cask install vrmquicklook`

### Manually

1. Download **VRMQuickLook_vX.X.X.zip** from [Releases](https://github.com/magicien/VRMQuickLook/releases/latest).
2. Put **VRMQuickLook.qlgenerator** (in the zip file) into `/Library/QuickLook` (for all users) or `~/Library/QuickLook` (only for the logged-in user).
3. Run `qlmanage -r` command to reload QuickLook plugins. (or restart your Mac)

## Build

It needs to install [Carthage](https://github.com/Carthage/Carthage) to get frameworks.
```
$ git clone https://github.com/magicien/VRMQuickLook.git
$ cd VRMQuickLook
$ carthage bootstrap --platform mac
$ xcodebuild
```

## See also

- [GLTFSceneKit](https://github.com/magicien/GLTFSceneKit/) - glTF loader for SceneKit
- [GLTFQuickLook](https://github.com/magicien/GLTFQuickLook/) - macOS QuickLook plugin for glTF files.

