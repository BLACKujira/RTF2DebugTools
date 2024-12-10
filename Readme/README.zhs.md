# 为 R-Type Final 2 设计的调试工具
这是一个为 *R-Type Final 2* 核心玩家、Wiki编写者和Mod开发者设计的简单调试工具。它将一些常用的功能整理为快捷键，方便用户调用。
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
1. 如果你还没有安装 *UE4SS* ，请按照 [安装UE4SS](https://github.com/BLACKujira/RTF2ModdingGuide/blob/master/Chapter1_TheBasics/zhs/%E5%AE%89%E8%A3%85UE4SS.md) 中的教程安装 *UE4SS v3.0.0* ，并升级到 *v3.0.1*
2. 下载 [Releases](https://github.com/BLACKujira/RTF2ModdingGuide/releases) 中的 `RTF2DebugTools.zip`
3. 按照 [安装LUA Mod](https://github.com/BLACKujira/RTF2ModdingGuide/blob/master/Chapter1_TheBasics/zhs/%E5%AE%89%E8%A3%85LUAMod.md) 中的教程安装这个Mod
4. 如果安装成功，运行游戏后将在UE4SS的控制台中可以看到这样的输出：
```
[xx:xx:xx] Starting Lua mod 'RTF2DebugTools'
[xx:xx:xx] [Lua] RTF2 Debug Tools loaded
```

## 注意点
- 更低版本的 *UE4SS* 或许也能运行这个Mod。

## 修改按键绑定
1. 用任意文本编辑器或IDE打开 `RTypeFinal2\Binaries\Win64\Mods\RTF2DebugTools\Scripts\main.lua`
2. 导航到文件最下方，这是将按键和功能关联起来的地方
3. 参照 [Key - UE4SS Documentation](https://docs.ue4ss.com/dev/lua-api/table-definitions/key.html) 修改按键吧。相信即使你没有学过编程，也能看出其中的关联！