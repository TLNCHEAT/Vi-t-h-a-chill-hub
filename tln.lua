-- ==========================================
-- TLN CHEAT | VIỆT HÓA CHILLI HUB
-- TIKTOK: hetcuu83
-- ==========================================
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LP = Players.LocalPlayer

local CHILLI = "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"
local LOGO = "https://cdn.upanhlaylink.com/i/l0hK1aFq.png"

local D = {
    -- Hành động
    ["auto"]="tự động",["steal"]="trộm",["collect"]="thu",["collecting"]="đang thu",
    ["sell"]="bán",["selling"]="đang bán",["buy"]="mua",["buying"]="đang mua",
    ["equip"]="trang bị",["unequip"]="gỡ",["equipped"]="đã trang bị",
    ["drop"]="thả",["use"]="dùng",["using"]="đang dùng",["open"]="mở",["opening"]="đang mở",
    ["close"]="đóng",["closing"]="đang đóng",["start"]="bắt đầu",["started"]="đã bắt đầu",
    ["stop"]="dừng",["stopped"]="đã dừng",["pause"]="tạm dừng",["paused"]="đã tạm dừng",
    ["resume"]="tiếp tục",["reset"]="đặt lại",["clear"]="xóa",["delete"]="xóa",
    ["save"]="lưu",["load"]="tải",["loading"]="đang tải",["loaded"]="đã tải",
    ["refresh"]="làm mới",["update"]="cập nhật",["updating"]="đang cập nhật",
    ["check"]="kiểm tra",["checking"]="đang kiểm tra",["verify"]="xác minh",
    ["verifying"]="đang xác minh",["run"]="chạy",["running"]="đang chạy",
    ["execute"]="chạy",["enable"]="bật",["enabled"]="đã bật",
    ["disable"]="tắt",["disabled"]="đã tắt",["toggle"]="công tắc",
    ["select"]="chọn",["selected"]="đã chọn",["press"]="nhấn",["click"]="bấm",
    ["copy"]="sao chép",["paste"]="dán",["send"]="gửi",["fetch"]="lấy",
    ["get"]="lấy",["set"]="đặt",["apply"]="áp dụng",["confirm"]="xác nhận",
    ["cancel"]="hủy",["exit"]="thoát",["quit"]="thoát",["try"]="thử",
    ["retry"]="thử lại",["wait"]="đợi",["waiting"]="đang đợi",["done"]="xong",
    ["finish"]="hoàn thành",["finished"]="đã hoàn thành",["complete"]="hoàn thành",
    ["completed"]="đã hoàn thành",["progress"]="tiến độ",["back"]="quay lại",
    ["next"]="tiếp",["previous"]="trước",

    -- Chức năng
    ["instant"]="tức thì",["teleport"]="dịch chuyển",["tp"]="dịch chuyển",
    ["fly"]="bay",["flying"]="đang bay",["noclip"]="xuyên tường",
    ["infinite"]="vô hạn",["godmode"]="bất tử",["god"]="thần",
    ["mode"]="chế độ",["kill"]="giết",["killing"]="đang giết",
    ["attack"]="tấn công",["attacking"]="đang tấn công",["hit"]="đánh",
    ["damage"]="sát thương",["health"]="máu",["hp"]="máu",
    ["speed"]="tốc độ",["boost"]="tăng",["boosted"]="đã tăng",
    ["jump"]="nhảy",["jumppower"]="lực nhảy",["walkspeed"]="tốc độ đi",
    ["bring"]="kéo",["bringed"]="đã kéo",["grab"]="lấy",
    ["zones"]="vùng",["zone"]="vùng",["region"]="khu vực",

    -- Danh mục
    ["farm"]="cày",["farming"]="đang cày",["player"]="người chơi",
    ["players"]="người chơi",["predictor"]="dự đoán",["prediction"]="dự đoán",
    ["server"]="máy chủ",["servers"]="máy chủ",["misc"]="khác",
    ["extra"]="thêm",["main"]="chính",["home"]="trang chủ",
    ["admin"]="quản trị",["abuse"]="lạm dụng",["settings"]="cài đặt",
    ["setting"]="cài đặt",["config"]="cấu hình",["configs"]="cấu hình",
    ["options"]="tùy chọn",["option"]="tùy chọn",["script"]="kịch bản",
    ["scripts"]="kịch bản",["menu"]="menu",["gui"]="giao diện",
    ["ui"]="giao diện",["theme"]="chủ đề",["color"]="màu",
    ["colors"]="màu sắc",["dark"]="tối",["light"]="sáng",
    ["rainbow"]="cầu vồng",["visual"]="hiển thị",["visuals"]="hiển thị",
    ["esp"]="hiện vị trí",["aimbot"]="ngắm tự động",["aim"]="ngắm",
    ["silent"]="ngầm",["hotkey"]="phím tắt",["hotkeys"]="phím tắt",
    ["keybind"]="phím gán",["search"]="tìm kiếm",["filter"]="lọc",
    ["sort"]="sắp xếp",["quick"]="nhanh",["bar"]="thanh",
    ["slider"]="thanh trượt",["dropdown"]="danh sách",["none"]="không",
    ["all"]="tất cả",["default"]="mặc định",["custom"]="tùy chỉnh",
    ["current"]="hiện tại",["total"]="tổng",["count"]="số lượng",

    -- Đối tượng
    ["egg"]="trứng",["eggs"]="trứng",["pet"]="thú cưng",["pets"]="thú cưng",
    ["inventory"]="túi đồ",["backpack"]="ba lô",["item"]="vật phẩm",
    ["items"]="vật phẩm",["storage"]="kho",["locker"]="tủ",
    ["enemy"]="kẻ địch",["enemies"]="kẻ địch",["friend"]="bạn",
    ["friends"]="bạn bè",["team"]="đội",["boss"]="trùm",
    ["guard"]="bảo vệ",["guards"]="bảo vệ",["npc"]="npc",
    ["quest"]="nhiệm vụ",["quests"]="nhiệm vụ",["mission"]="nhiệm vụ",
    ["missions"]="nhiệm vụ",["task"]="nhiệm vụ",["tasks"]="nhiệm vụ",
    ["daily"]="hàng ngày",["reward"]="phần thưởng",["rewards"]="phần thưởng",
    ["gift"]="quà",["gifts"]="quà",["trade"]="giao dịch",
    ["trading"]="giao dịch",["shop"]="cửa hàng",["store"]="cửa hàng",
    ["chest"]="rương",["chests"]="rương",["box"]="hộp",["boxes"]="hộp",

    -- Trạng thái
    ["success"]="thành công",["successfully"]="thành công",
    ["failed"]="thất bại",["fail"]="thất bại",["failure"]="thất bại",
    ["error"]="lỗi",["errors"]="lỗi",["warning"]="cảnh báo",
    ["notice"]="thông báo",["info"]="thông tin",["information"]="thông tin",
    ["invalid"]="không hợp lệ",["valid"]="hợp lệ",["expired"]="hết hạn",
    ["expire"]="hết hạn",["ready"]="sẵn sàng",["active"]="hoạt động",
    ["inactive"]="không hoạt động",["true"]="bật",["false"]="tắt",
    ["yes"]="có",["no"]="không",["on"]="bật",["off"]="tắt",
    ["loading..."]="đang tải...",["wait..."]="đợi...",

    -- Stats
    ["level"]="cấp độ",["xp"]="kinh nghiệm",["exp"]="kinh nghiệm",
    ["rank"]="xếp hạng",["stats"]="chỉ số",["stat"]="chỉ số",
    ["value"]="giá trị",["rarity"]="độ hiếm",["coins"]="xu",
    ["coin"]="xu",["cash"]="tiền",["money"]="tiền",["gems"]="đá quý",
    ["gem"]="đá quý",["rebirth"]="tái sinh",["rebirths"]="tái sinh",

    -- Độ hiếm
    ["common"]="thường",["uncommon"]="ít gặp",["rare"]="hiếm",
    ["epic"]="cực hiếm",["legendary"]="huyền thoại",["mythical"]="thần thoại",
    ["secret"]="bí mật",["limited"]="giới hạn",["event"]="sự kiện",
    ["free"]="miễn phí",["premium"]="cao cấp",["vip"]="vip",

    -- Key / Social
    ["key"]="khóa",["key system"]="hệ thống khóa",["get key"]="lấy khóa",
    ["link"]="liên kết",["copy link"]="sao chép liên kết",
    ["discord"]="discord",["youtube"]="youtube",["website"]="trang web",
    ["join"]="tham gia",["join discord"]="vào discord",
    ["please"]="vui lòng",["please wait"]="vui lòng đợi",

    -- Đặc thù Steal a Egg
    ["butterfly"]="bướm",["bloom"]="nở",["wisp"]="linh hồn",
    ["companion"]="đồng hành",["scramble"]="xáo trộn",["lab"]="phòng thí nghiệm",
    ["shooting"]="bắn",["star"]="sao",["racing"]="đua",
    ["hunt"]="săn",["raid"]="đột kích",["anti"]="chống",
    ["speed boost"]="tăng tốc",["boost speed"]="tốc độ tăng",
    ["instant steal"]="trộm tức thì",["instant steal v2"]="trộm tức thì v2",
    ["teleport to egg"]="dịch chuyển tới trứng",
    ["egg esp"]="hiện vị trí trứng",["bring egg"]="kéo trứng",
    ["egg info"]="thông tin trứng",["egg value"]="giá trị trứng",
    ["egg rarity"]="độ hiếm trứng",["egg hunt"]="săn trứng",
    ["anti guard"]="chống bảo vệ",["admin abuse"]="quyền admin",
    ["quick & keys"]="phím tắt",["quick & key"]="phím tắt",
}

local function translate(text)
    if not text or text == "" then return text end
    -- Đổi Chilli → TLN CHEAT (không phân biệt hoa thường)
    text = text:gsub("[Cc][Hh][Ii][Ll][Ll][Ii]%s*[Hh][Uu][Bb]", "TLN CHEAT")
    text = text:gsub("[Cc][Hh][Ii][Ll][Ll][Ii]", "TLN CHEAT")
    if #text > 80 then return text end
    local lower = text:lower()
    local result = text
    local keys = {}
    for k in pairs(D) do table.insert(keys, k) end
    table.sort(keys, function(a, b) return #a > #b end)
    for _, en in ipairs(keys) do
        local vi = D[en]
        local s, e = lower:find(en, 1, true)
        if s then
            result = result:sub(1, s - 1) .. vi .. result:sub(e + 1)
            lower = result:lower()
        end
    end
    if text:sub(1,1):match("%u") and result:sub(1,1):match("%l") then
        result = result:sub(1,1):upper() .. result:sub(2)
    end
    return result
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

-- Quét dịch + đổi logo
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
end)viethoa(CoreGui)
    if pg then viethoa(pg) end
end)ion() return game:HttpGet(CHILLI) end)
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
