print("RTF2 Debug Tools loaded")

-- 切换无敌
-- Toggle invincibility mode
-- 無敵モードを切り替える
local function SwitchInvincibility()
    local AircraftInstance = nil
    AircraftInstance = FindFirstOf("AircraftBasePawn")

    if not AircraftInstance then 
        print("No AircraftInstance found\n")
    else
        AircraftInstance.bActorEnableCollision = not AircraftInstance.bActorEnableCollision
        print(string.format("%s collision set to %s\n", AircraftInstance:GetFullName(), tostring(AircraftInstance.bActorEnableCollision)))
    end
end

-- 增加1050卷轴速度
-- Increase scroll speed by 1050
-- スクロール速度を1050増加させる
local function IncreaseScrollSpeed()
    local ScrollManager = nil
    ScrollManager = FindFirstOf("ScrollManager")

    if not ScrollManager then
        print("No ScrollManager found\n")
    else
        ScrollManager:BpSetScrollSpeed(ScrollManager.BpGetScrollSpeed() + 1050)
        print(string.format("%s ScrollSpeed set to %f\n", ScrollManager:GetFullName(), ScrollManager.BpGetScrollSpeed()))
    end
end

-- 减少1050卷轴速度
-- Decrease scroll speed by 1050
-- スクロール速度を1050減少させる
local function DecreaseScrollSpeed()
    local ScrollManager = nil
    ScrollManager = FindFirstOf("ScrollManager")

    if not ScrollManager then
        print("No ScrollManager found\n")
    else
        ScrollManager:BpSetScrollSpeed(ScrollManager.BpGetScrollSpeed() - 1050)
        print(string.format("%s ScrollSpeed set to %f\n", ScrollManager:GetFullName(), ScrollManager.BpGetScrollSpeed()))
    end
end

-- 切换开启/停止卷轴
-- Toggle scroll enable state
-- スクロールの有効状態を切り替える
local function SwitchScrollEnable()
    local ScrollManager = nil
    ScrollManager = FindFirstOf("ScrollManager")

    if not ScrollManager then
        print("No ScrollManager found\n")
    else
        ScrollManager.bIsScrollEnable = not ScrollManager.bIsScrollEnable
        print(string.format("%s ScrollEnable set to %s\n", ScrollManager:GetFullName(), tostring(ScrollManager.bIsScrollEnable)))
    end
end

-- 将卷轴速度设置为1050（大多数关卡的默认速度）
-- Set scroll speed to 1050 (default for most levels)
-- スクロール速度を1050に設定する（ほとんどのレベルのデフォルト速度）
local function Set1050ScrollSpeed()
    local ScrollManager = nil
    ScrollManager = FindFirstOf("ScrollManager")

    if not ScrollManager then
        print("No ScrollManager found\n")
    else
        ScrollManager:BpSetScrollSpeed(1050)
        print(string.format("%s ScrollSpeed set to %f\n", ScrollManager:GetFullName(), ScrollManager.BpGetScrollSpeed()))
    end
end

-- 高FOV模式
-- Enable high FOV mode (field of view)
-- 高FOVモードを有効にする（視野角）
local function HighFOVMode()
    local ShooterPlayerController = nil
    ShooterPlayerController = FindFirstOf("ShooterPlayerController")

    if not ShooterPlayerController then
        print("No ShooterPlayerController found\n")
    else
        ShooterPlayerController:FOV(100)
    end
end

-- 重置FOV
-- Reset FOV to default
-- FOVをデフォルトにリセットする
local function ResetFOV()
    local ShooterPlayerController = nil
    ShooterPlayerController = FindFirstOf("ShooterPlayerController")

    if not ShooterPlayerController then
        print("No ShooterPlayerController found\n")
    else
        ShooterPlayerController:FOV(32)
    end
end

-- 在这里修改按键绑定
-- Change key bindings here
-- ここでキーバインドを変更する
RegisterKeyBind(Key.F1, SwitchInvincibility)
RegisterKeyBind(Key.F2, DecreaseScrollSpeed)
RegisterKeyBind(Key.F3, IncreaseScrollSpeed)
RegisterKeyBind(Key.F4, SwitchScrollEnable)
RegisterKeyBind(Key.F5, Set1050ScrollSpeed)
RegisterKeyBind(Key.F6, HighFOVMode)
RegisterKeyBind(Key.F7, ResetFOV)