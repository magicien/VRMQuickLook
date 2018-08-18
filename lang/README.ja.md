# VRMQuickLook
macOS用VRM QuickLookプラグイン

## 対応システム

- macOS 10.13 (High Sierra) 以降

![ScreenShot](https://github.com/magicien/VRMQuickLook/blob/master/screenshot.gif)

## インストール方法

### [Homebrew Cask](https://github.com/phinze/homebrew-cask)でインストール

- 準備中...（Homebrew登録申請条件がStar 10以上のため）

### 手動インストール

1. [Releases](https://github.com/magicien/VRMQuickLook/releases/latest)ページから最新の「**VRMQuickLook_vX.X.X.zip**」をダウンロードする
2. ZIPファイル中の「**VRMQuickLook.qlgenerator**」を `/Library/QuickLook` (全ユーザ用) か`~/Library/QuickLook` (使用中のユーザ用)にコピーする
3. ターミナルで`qlmanage -r`を実行してQuickLookプラグインの再読み込みをする。（またはMacを再起動する）

## ビルド方法（改造したい人向け）

[Carthage](https://github.com/Carthage/Carthage)が無い場合はインストールする。
その後、下記コマンドを実行する。
```
$ git clone https://github.com/magicien/VRMQuickLook.git
$ cd VRMQuickLook
$ carthage bootstrap --platform mac
$ xcodebuild
```

## 関連リポジトリ

- [VRMPreview](https://github.com/magicien/VRMPreview/) - macOS用VRMビューア
- [GLTFSceneKit](https://github.com/magicien/GLTFSceneKit/) - SceneKit用glTFローダ
- [GLTFQuickLook](https://github.com/magicien/GLTFQuickLook/) - macOS、glTF用QuickLookプラグイン

