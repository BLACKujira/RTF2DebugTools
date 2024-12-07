# 为 R-Type Final 2 设计的调试工具
这是一个为R-Type Final 2核心玩家、wiki编写者和Mod开发者设计的简单调试工具。它将一些常用的功能整理为快捷键，方便用户调用。
- **请不要将这个Mod用作不正当竞争目的**

## 功能
### 切换无敌
- 默认按键：`F1`
- 关闭/开启玩家的碰撞体，敌人和敌弹无法伤害玩家。但是依旧会和墙壁类型的物体产生碰撞，被墙壁挤出屏幕外依旧会死亡。此外还有无法获得道具、无法和Force合体的副作用。
- 会在控制台输出当前的玩家对象和碰撞体启用情况。

### 减少1050卷轴速度
- 默认按键：`F2`
- 将当前关卡的卷轴速度减少1050。
- 会在控制台输出当前的卷轴管理对象和卷轴速度。

### 增加1050卷轴速度
- 默认按键：`F3`
- 将当前关卡的卷轴速度增加1050。
- 会在控制台输出当前的卷轴管理对象和卷轴速度。

### 切换开启/停止卷轴
- 默认按键：`F4`
- 启用或停用关卡卷轴，停用后无论卷轴速度为多少，都不会继续前进。
- 会在控制台输出当前的卷轴管理对象和卷轴启用情况。

### 将卷轴速度设置为1050
- 默认按键：`F5`
- 将将卷轴速度设置为1050，由于1050是大多数关卡的默认卷轴速度，此功能相当于重置卷轴速度。
- 会在控制台输出当前的卷轴管理对象和卷轴速度。

### 切换为高FOV模式
- 默认按键：`F6`
- 将当前相机的FOV设置为100，将可以看到一般情况下屏幕外面的内容。

### 重置FOV
- 默认按键：`F7`
- 将当前相机的FOV设置为32，这是默认的相机FOV。

## 安装教程
1. 按照 [UE4SS-RE/RE-UE4SS](https://github.com/UE4SS-RE/RE-UE4SS) 及其文档中的教程安装UE4SS v3.0.0，并升级到v3.0.1
2. 下载 Releases 中的 `RTF2DebugTools.zip`
3. 将 `RTF2DebugTools.zip` 中的 `RTF2DebugTools` 文件夹复制到游戏目录下的 `RTypeFinal2\Binaries\Win64\Mods` 中
4. 打开 `RTypeFinal2\Binaries\Win64\Mods\mods.txt` ，在Mod列表下方、 `; Built-in keybinds, do not move up!` 上方添加一条 `RTF2DebugTools : 1`
5. 如果安装成功，在UE4SS的控制台中可以看到这样的输出：
```
[xx:xx:xx] Starting Lua mod 'RTF2DebugTools'
[xx:xx:xx] [Lua] RTF2 Debug Tools loaded
```

## 注意点
- 如果UE4SS的调试窗口为一片空白，请将 `RTypeFinal2\Binaries\Win64\UE4SS-settings.ini` 中 `GraphicsAPI` 的值改为 `dx11`

## 修改按键绑定
1. 用任意文本编辑器或IDE打开 `RTypeFinal2\Binaries\Win64\Mods\RTF2DebugTools\Scripts\main.lua`
2. 导航到文件最下方，这是将按键和功能关联起来的地方
3. 参照 [Key - UE4SS Documentation](https://docs.ue4ss.com/dev/lua-api/table-definitions/key.html) 修改按键吧。相信即使你没有学过编程，也能看出其中的关联！