-- ==========================================
-- TLN CHEAT | VIỆT HÓA CHILLI HUB
-- TIKTOK: hetcuu83
-- ==========================================
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LP = Players.LocalPlayer

local CHILLI = "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"
local LOGO = "https://cdn.upanhlaylink.com/i/l0hK1aFq.png"

local T = {
    ["Chilli Hub"] = "TLN CHEAT",
    ["ChilliHub"] = "TLN CHEAT",
    ["Chilli"] = "TLN CHEAT",
    ["Farm"] = "Cày",
    ["Player"] = "Người Chơi",
    ["Players"] = "Người Chơi",
    ["Predictor"] = "Dự Đoán",
    ["Prediction"] = "Dự Đoán",
    ["Progress"] = "Tiến Độ",
    ["Server"] = "Server",
    ["Misc"] = "Khác",
    ["Extra"] = "Thêm",
    ["Main"] = "Chính",
    ["Home"] = "Trang Chủ",
    ["Auto Hop"] = "Tự Động Chuyển",
    ["AutoHop"] = "Tự Động Chuyển",
    ["Admin Abuse"] = "Quyền Admin",
    ["AdminAbuse"] = "Quyền Admin",
    ["Discord"] = "Discord",
    ["Quick & Keys"] = "Phím Tắt",
    ["Quick & Key"] = "Phím Tắt",
    ["QuickBar"] = "Thanh Nhanh",
    ["Quick Bar"] = "Thanh Nhanh",
    ["Settings"] = "Cài Đặt",
    ["Config"] = "Cấu Hình",
    ["Options"] = "Tùy Chọn",
    ["Option"] = "Tùy Chọn",
    ["Scripts"] = "Script",
    ["Script"] = "Script",
    ["AutoSteal"] = "Tự Động Trộm",
    ["Auto Steal"] = "Tự Động Trộm",
    ["AutoCollect"] = "Tự Động Thu",
    ["Auto Collect"] = "Tự Động Thu",
    ["AutoFarm"] = "Tự Động Cày",
    ["Auto Farm"] = "Tự Động Cày",
    ["AutoEgg"] = "Tự Động Trứng",
    ["Auto Egg"] = "Tự Động Trứng",
    ["AutoSell"] = "Tự Động Bán",
    ["Auto Sell"] = "Tự Động Bán",
    ["AutoBuy"] = "Tự Động Mua",
    ["Auto Buy"] = "Tự Động Mua",
    ["AutoAttack"] = "Tự Động Đánh",
    ["Auto Attack"] = "Tự Động Đánh",
    ["AutoPet"] = "Tự Động Thú Cưng",
    ["Auto Pet"] = "Tự Động Thú Cưng",
    ["Auto"] = "Tự Động",
    ["Steal"] = "Trộm",
    ["Stealing"] = "Đang Trộm",
    ["Collect"] = "Thu Thập",
    ["Collecting"] = "Đang Thu",
    ["Egg"] = "Trứng",
    ["Eggs"] = "Trứng",
    ["InstantSteal"] = "Trộm Tức Thì",
    ["Instant Steal"] = "Trộm Tức Thì",
    ["InstantStealV2"] = "Trộm Tức Thì V2",
    ["Instant Steal V2"] = "Trộm Tức Thì V2",
    ["Instant"] = "Tức Thì",
    ["TeleportToEgg"] = "Dịch Chuyển Tới Trứng",
    ["Teleport To Egg"] = "Dịch Chuyển Tới Trứng",
    ["Teleport"] = "Dịch Chuyển",
    ["TP"] = "Dịch Chuyển",
    ["EggESP"] = "Hiện Vị Trí Trứng",
    ["Egg ESP"] = "Hiện Vị Trí Trứng",
    ["ESP"] = "ESP",
    ["BringEgg"] = "Kéo Trứng",
    ["Bring Egg"] = "Kéo Trứng",
    ["GrabEgg"] = "Lấy Trứng",
    ["Grab Egg"] = "Lấy Trứng",
    ["EggInfo"] = "Thông Tin Trứng",
    ["Egg Info"] = "Thông Tin Trứng",
    ["EggValue"] = "Giá Trị Trứng",
    ["Egg Value"] = "Giá Trị Trứng",
    ["EggRarity"] = "Độ Hiếm Trứng",
    ["Egg Rarity"] = "Độ Hiếm Trứng",
    ["Zones"] = "Vùng",
    ["Zone"] = "Vùng",
    ["SellAll"] = "Bán Hết",
    ["Sell All"] = "Bán Hết",
    ["Sell"] = "Bán",
    ["Selling"] = "Đang Bán",
    ["BuyAll"] = "Mua Hết",
    ["Buy All"] = "Mua Hết",
    ["Buy"] = "Mua",
    ["Pet"] = "Thú Cưng",
    ["Pets"] = "Thú Cưng",
    ["Equip"] = "Trang Bị",
    ["EquipAll"] = "Trang Bị Hết",
    ["Equip All"] = "Trang Bị Hết",
    ["Unequip"] = "Gỡ",
    ["Equipped"] = "Đã Trang Bị",
    ["Inventory"] = "Túi Đồ",
    ["Backpack"] = "Ba Lô",
    ["Items"] = "Vật Phẩm",
    ["Item"] = "Vật Phẩm",
    ["Drop"] = "Thả",
    ["DropAll"] = "Thả Hết",
    ["Drop All"] = "Thả Hết",
    ["Speed"] = "Tốc Độ",
    ["SpeedBoost"] = "Tăng Tốc",
    ["Speed Boost"] = "Tăng Tốc",
    ["BoostSpeed"] = "Tốc Độ Boost",
    ["Boost Speed"] = "Tốc Độ Boost",
    ["WalkSpeed"] = "Tốc Độ Đi",
    ["Walk Speed"] = "Tốc Độ Đi",
    ["JumpPower"] = "Lực Nhảy",
    ["Jump Power"] = "Lực Nhảy",
    ["Jump"] = "Nhảy",
    ["InfiniteJump"] = "Nhảy Vô Hạn",
    ["Infinite Jump"] = "Nhảy Vô Hạn",
    ["Fly"] = "Bay",
    ["FlySpeed"] = "Tốc Độ Bay",
    ["Fly Speed"] = "Tốc Độ Bay",
    ["Noclip"] = "Xuyên Tường",
    ["Infinite"] = "Vô Hạn",
    ["GodMode"] = "Bất Tử",
    ["God Mode"] = "Bất Tử",
    ["Kill"] = "Giết",
    ["Attack"] = "Tấn Công",
    ["Damage"] = "Sát Thương",
    ["Health"] = "Máu",
    ["Aimbot"] = "Ngắm Tự Động",
    ["Aim"] = "Ngắm",
    ["SilentAim"] = "Ngắm Ngầm",
    ["Silent Aim"] = "Ngắm Ngầm",
    ["KeySystem"] = "Hệ Thống Key",
    ["Key System"] = "Hệ Thống Key",
    ["GetKey"] = "Lấy Key",
    ["Get Key"] = "Lấy Key",
    ["Key"] = "Key",
    ["CopyLink"] = "Copy Liên Kết",
    ["Copy Link"] = "Copy Liên Kết",
    ["Link"] = "Liên Kết",
    ["Check"] = "Kiểm Tra",
    ["Checking"] = "Đang Kiểm Tra",
    ["Verify"] = "Xác Minh",
    ["Expired"] = "Hết Hạn",
    ["Invalid"] = "Không Hợp Lệ",
    ["Loading"] = "Đang Tải",
    ["Loaded"] = "Đã Tải",
    ["Success"] = "Thành Công",
    ["Failed"] = "Thất Bại",
    ["Error"] = "Lỗi",
    ["Warning"] = "Cảnh Báo",
    ["Execute"] = "Chạy",
    ["Run"] = "Chạy",
    ["Stop"] = "Dừng",
    ["Start"] = "Bắt Đầu",
    ["Pause"] = "Tạm Dừng",
    ["Reset"] = "Đặt Lại",
    ["Clear"] = "Xóa",
    ["Delete"] = "Xóa",
    ["Save"] = "Lưu",
    ["Load"] = "Tải",
    ["Refresh"] = "Làm Mới",
    ["Update"] = "Cập Nhật",
    ["Close"] = "Đóng",
    ["Open"] = "Mở",
    ["Minimize"] = "Thu Nhỏ",
    ["Menu"] = "Menu",
    ["GUI"] = "Giao Diện",
    ["Theme"] = "Chủ Đề",
    ["Color"] = "Màu",
    ["Dark"] = "Tối",
    ["Light"] = "Sáng",
    ["Rainbow"] = "Cầu Vồng",
    ["Toggle"] = "Công Tắc",
    ["Slider"] = "Thanh Trượt",
    ["Dropdown"] = "Danh Sách",
    ["Search"] = "Tìm Kiếm",
    ["Filter"] = "Lọc",
    ["Hotkeys"] = "Phím Tắt",
    ["Hotkey"] = "Phím Tắt",
    ["Press"] = "Nhấn",
    ["Click"] = "Bấm",
    ["Select"] = "Chọn",
    ["Selected"] = "Đã Chọn",
    ["None"] = "Không",
    ["All"] = "Tất Cả",
    ["Default"] = "Mặc Định",
    ["Custom"] = "Tùy Chỉnh",
    ["JoinDiscord"] = "Vào Discord",
    ["Join Discord"] = "Vào Discord",
    ["Website"] = "Trang Web",
    ["Rebirth"] = "Tái Sinh",
    ["Rebirths"] = "Tái Sinh",
    ["Coins"] = "Xu",
    ["Cash"] = "Tiền",
    ["Money"] = "Tiền",
    ["Gems"] = "Đá Quý",
    ["Level"] = "Cấp Độ",
    ["XP"] = "Kinh Nghiệm",
    ["Rank"] = "Xếp Hạng",
    ["Leaderboard"] = "Bảng Xếp Hạng",
    ["Stats"] = "Chỉ Số",
    ["Value"] = "Giá Trị",
    ["Rarity"] = "Độ Hiếm",
    ["Common"] = "Thường",
    ["Uncommon"] = "Ít Gặp",
    ["Rare"] = "Hiếm",
    ["Epic"] = "Cực Hiếm",
    ["Legendary"] = "Huyền Thoại",
    ["Mythical"] = "Thần Thoại",
    ["Secret"] = "Bí Mật",
    ["Event"] = "Sự Kiện",
    ["Limited"] = "Giới Hạn",
    ["Free"] = "Miễn Phí",
    ["Premium"] = "Cao Cấp",
    ["Trade"] = "Giao Dịch",
    ["Gift"] = "Quà Tặng",
    ["Reward"] = "Phần Thưởng",
    ["Daily"] = "Hàng Ngày",
    ["Quest"] = "Nhiệm Vụ",
    ["Mission"] = "Nhiệm Vụ",
    ["Complete"] = "Hoàn Thành",
    ["Completed"] = "Đã Hoàn Thành",
    ["RacingEvent"] = "Sự Kiện Đua",
    ["Racing Event"] = "Sự Kiện Đua",
    ["Racing Sự Kiện"] = "Sự Kiện Đua",
    ["ShootingStar"] = "Sao Băng",
    ["Shooting Star"] = "Sao Băng",
    ["ButterflyBloom"] = "Butterfly Bloom",
    ["Butterfly Bloom"] = "Butterfly Bloom",
    ["WispCompanion"] = "Wisp Companion",
    ["Wisp Companion"] = "Wisp Companion",
    ["DrScrambleLab"] = "Phòng Thí Nghiệm Dr Scramble",
    ["Dr Scramble Lab"] = "Phòng Thí Nghiệm Dr Scramble",
    ["EggHunt"] = "Săn Trứng",
    ["Egg Hunt"] = "Săn Trứng",
    ["Raid"] = "Đột Kích",
    ["Boss"] = "Trùm",
    ["AntiGuard"] = "Chống Bảo Vệ",
    ["Anti Guard"] = "Chống Bảo Vệ",
    ["Guard"] = "Bảo Vệ",
    ["selected"] = "đã chọn",
    ["Enabled"] = "Đã Bật",
    ["Disabled"] = "Đã Tắt",
    ["On"] = "Bật",
    ["Off"] = "Tắt",
    ["Yes"] = "Có",
    ["No"] = "Không",
    ["Exit"] = "Thoát",
    ["Quit"] = "Thoát",
    ["Cancel"] = "Hủy",
    ["Confirm"] = "Xác Nhận",
    ["Apply"] = "Áp Dụng",
    ["OK"] = "OK",
    ["FPS"] = "FPS",
    ["Ping"] = "Ping",
    ["Time"] = "Thời Gian",
    ["Status"] = "Trạng Thái",
    ["Info"] = "Thông Tin",
    ["Version"] = "Phiên Bản",
    ["Author"] = "Tác Giả",
}

local function translate(text)
    if not text or text == "" then return text end
    local exact = T[text]
    if exact then return exact end
    if #text > 80 then return text end
    local lower = text:lower()
    for en, vi in pairs(T) do
        if #en > 2 and lower:find(en:lower(), 1, true) then
            local s, e = text:lower():find(en:lower(), 1, true)
            if s then
                text = text:sub(1, s - 1) .. vi .. text:sub(e + 1)
                lower = text:lower()
            end
        end
    end
    return text
end

local translated = setmetatable({}, {__mode = "k"})

local function viethoa(root)
    if not root then return end
    local function scan(obj)
        if not obj then return end
        if translated[obj] then return end
        translated[obj] = true
        pcall(function()
            if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
                local t = obj.Text
                if t and t ~= "" then
                    local lower = t:lower()
                    if lower:find("việt hóa") or (lower:find("tln cheat") and lower:find("tiktok")) then
                        obj.Visible = false
                    else
                        local n = translate(t)
                        if n ~= t then obj.Text = n end
                    end
                end
            end
            if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
                local img = (obj.Image or ""):lower()
                local nm = obj.Name:lower()
                if img:find("chilli") or nm:find("chilli") or nm == "logo" or nm:find("logo") then
                    obj.Image = LOGO
                end
            end
            for _, c in ipairs(obj:GetChildren()) do scan(c) end
        end)
    end
    scan(root)
end

-- Load Chilli
task.spawn(function()
    local ok, source = pcall(function() return game:HttpGet(CHILLI) end)
    if not ok or not source or #source == 0 then return end
    local chunk = loadstring(source)
    if chunk then pcall(chunk) end
end)

-- Xóa watermark cũ
task.spawn(function()
    task.wait(0.5)
    for _, v in ipairs({CoreGui, LP:FindFirstChild("PlayerGui")}) do
        if v then
            for _, c in ipairs(v:GetChildren()) do
                if c.Name == "TLN_WATERMARK" or c.Name == "TLN_WM" or c.Name == "TLN_TikTokTag" then
                    c:Destroy()
                end
            end
        end
    end
end)

-- Tag TIKTOK
task.spawn(function()
    task.wait(0.5)
    local tagGui = Instance.new("ScreenGui")
    tagGui.Name = "TLN_TikTokTag"
    tagGui.ResetOnSpawn = false
    tagGui.IgnoreGuiInset = true
    tagGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local ok = pcall(function() tagGui.Parent = CoreGui end)
    if not ok then pcall(function() tagGui.Parent = LP:WaitForChild("PlayerGui", 3) end) end

    local lbl = Instance.new("TextLabel", tagGui)
    lbl.Size = UDim2.new(0, 260, 0, 26)
    lbl.Position = UDim2.new(0.5, -130, 0, 6)
    lbl.BackgroundColor3 = Color3.fromRGB(15, 15, 23)
    lbl.BackgroundTransparency = 0.15
    lbl.Text = "TIKTOK: hetcuu83"
    lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    lbl.TextSize = 14
    lbl.Font = Enum.Font.GothamBlack
    lbl.BorderSizePixel = 0
    lbl.ZIndex = 999
    Instance.new("UICorner", lbl).CornerRadius = UDim.new(0, 8)
    local stroke = Instance.new("UIStroke", lbl)
    stroke.Color = Color3.fromRGB(255, 45, 85)
    stroke.Thickness = 1.5
    local grad = Instance.new("UIGradient", lbl)
    grad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 210, 220)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 90, 120))
    })
end)

-- Quét dịch nhiều lần
task.spawn(function()
    task.wait(2)
    viethoa(CoreGui)
    local pg = LP:FindFirstChild("PlayerGui")
    if pg then viethoa(pg) end
    task.wait(1.5)
    viethoa(CoreGui)
    if pg then viethoa(pg) end
    task.wait(2)
    viethoa(CoreGui)
    if pg then viethoa(pg) end
    task.wait(3)
    viethoa(CoreGui)
    if pg then viethoa(pg) end
end)

-- Auto-dump chuỗi chưa dịch (chỉ in ra console, không hiện UI)
task.spawn(function()
    task.wait(6)
    local seen = {}
    local list = {}
    local function scan(obj)
        pcall(function()
            if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
                local t = obj.Text
                if t and t ~= "" and not seen[t] then
                    seen[t] = true
                    -- Chỉ in chuỗi có chữ cái Latin (bỏ qua chuỗi chỉ số, ký tự)
                    if t:find("%a") then
                        table.insert(list, t)
                    end
                end
            end
            for _, c in ipairs(obj:GetChildren()) do scan(c) end
        end)
    end
    scan(CoreGui)
    local pg = LP:FindFirstChild("PlayerGui")
    if pg then scan(pg) end
    print("===== TLN DUMP START =====")
    for _, t in ipairs(list) do
        print("[TEXT] " .. t)
    end
    print("===== TLN DUMP END (" .. #list .. " chuỗi) =====")
end)
