# R-Type Final 2 用デバッグツール
これは、R-Type Final 2 のコアプレイヤー、Wiki執筆者、Mod開発者向けに設計された簡単なデバッグツールです。よく使われる機能をショートカットキーにまとめ、便利に呼び出せるようにしています。  
- **このModを不正競争目的で使用しないでください。**

## 機能
### 無敵モード切り替え
- デフォルトキー：`F1`
- プレイヤーの当たり判定を有効/無効に切り替えます。無効化すると敵や敵弾はプレイヤーにダメージを与えられません。ただし、壁タイプのオブジェクトとの衝突は引き続き発生し、画面外に押し出されると死亡します。また、アイテムを取得できなくなったり、Forceと接続できなくなる副作用があります。
- コンソールに現在のプレイヤーオブジェクトと当たり判定の状態が出力されます。

### スクロール速度を1050減少
- デフォルトキー：`F2`
- 現在のステージのスクロール速度を1050減少させます。
- コンソールに現在のスクロール管理オブジェクトとスクロール速度が出力されます。

### スクロール速度を1050増加
- デフォルトキー：`F3`
- 現在のステージのスクロール速度を1050増加させます。
- コンソールに現在のスクロール管理オブジェクトとスクロール速度が出力されます。

### スクロールの有効/無効を切り替え
- デフォルトキー：`F4`
- ステージのスクロールを有効または無効にします。無効化すると、スクロール速度に関係なくステージは進行しなくなります。
- コンソールに現在のスクロール管理オブジェクトとスクロール有効状態が出力されます。

### スクロール速度を1050に設定
- デフォルトキー：`F5`
- スクロール速度を1050に設定します。1050はほとんどのステージのデフォルト速度であるため、この機能はスクロール速度のリセットと同等です。
- コンソールに現在のスクロール管理オブジェクトとスクロール速度が出力されます。

### 高FOVモード切り替え
- デフォルトキー：`F6`
- 現在のカメラのFOVを100に設定し、通常では画面外となる内容を見ることができるようにします。

### FOVをリセット
- デフォルトキー：`F7`
- 現在のカメラのFOVを32にリセットします。これはデフォルト値です。

## インストール方法
1. [UE4SS-RE/RE-UE4SS](https://github.com/UE4SS-RE/RE-UE4SS) のドキュメントを参照してUE4SS v3.0.0 をインストールし、v3.0.1にアップデートします。
2. Releasesセクションから `RTF2DebugTools.zip` をダウンロードします。
3. `RTF2DebugTools.zip` 内の `RTF2DebugTools` フォルダを、ゲームディレクトリの `RTypeFinal2\Binaries\Win64\Mods` にコピーします。
4. `RTypeFinal2\Binaries\Win64\Mods\mods.txt` を開き、Modリストの下部で `; Built-in keybinds, do not move up!` の上に以下の行を追加します：  `RTF2DebugTools : 1`
5. 正しくインストールされている場合、UE4SSコンソールに以下のような出力が表示されます：
```
[xx:xx:xx] Starting Lua mod 'RTF2DebugTools'
[xx:xx:xx] [Lua] RTF2 Debug Tools loaded
```

## 注意点
- UE4SS のデバッグウィンドウが空白の場合、`RTypeFinal2\Binaries\Win64\UE4SS-settings.ini` の `GraphicsAPI` の値を `dx11` に設定してください。

## キーバインドを変更する方法
1. 任意のテキストエディタまたはIDEを使用して `RTypeFinal2\Binaries\Win64\Mods\RTF2DebugTools\Scripts\main.lua` を開きます。
2. ファイルの最下部に移動します。ここにキーと機能の関連付けがあります。
3. [Key - UE4SS Documentation](https://docs.ue4ss.com/dev/lua-api/table-definitions/key.html) を参照しながらキーを変更してください。プログラミング経験がなくても、関連性を理解するのは簡単なはずです！