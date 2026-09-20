-- ==========================================
-- BẢO ĐẸP TRAI HUB (GIỮ NGUYÊN ĐỒ HỌA GAME)
-- ==========================================

-- BƯỚC 1: Kích hoạt thông báo độc quyền của bạn trước
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Bảo Đẹp Trai Hub",
    Text = "Đang cấu hình script...Vui lòng đợi trong giây lát!",
    Duration = 3
})

-- BƯỚC 2: Luồng đổi tên ngầm (GIỮ NGUYÊN ĐỒ HỌA, CHỈ ĐỔI CHỮ)
task.spawn(function()
    local CoreGui = game:GetService("CoreGui")
    local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    
    -- Vòng lặp quét nhẹ nhàng trong 15 giây để đổi tên sau khi menu gốc hiện
    for i = 1, 30 do
        task.wait(0.5)
        
        -- Quét đổi chữ trong hệ thống menu hack
        for _, v in pairs(CoreGui:GetDescendants()) do
            if v:IsA("TextLabel") or v:IsA("TextButton") then
                if string.find(v.Text, "RealKid") or string.find(v.Text, "realkid") or string.find(v.Text, "BảoMod") then
                    v.Text = string.gsub(v.Text, "RealKid Hub", "Bảo Đẹp Trai Hub")
                    v.Text = string.gsub(v.Text, "RealKid", "Bảo Đẹp Trai")
                    v.Text = string.gsub(v.Text, "realkid", "Bảo Đẹp Trai")
                    v.Text = string.gsub(v.Text, "BảoMod Hub", "Bảo Đẹp Trai Hub")
                    v.Text = string.gsub(v.Text, "BảoMod", "Bảo Đẹp Trai")
                end
            end
        end
        
        -- Quét đổi chữ trong giao diện người chơi
        for _, v in pairs(PlayerGui:GetDescendants()) do
            if v:IsA("TextLabel") or v:IsA("TextButton") then
                if string.find(v.Text, "RealKid") or string.find(v.Text, "realkid") or string.find(v.Text, "BảoMod") then
                    v.Text = string.gsub(v.Text, "RealKid Hub", "Bảo Đẹp Trai Hub")
                    v.Text = string.gsub(v.Text, "RealKid", "Bảo Đẹp Trai")
                    v.Text = string.gsub(v.Text, "realkid", "Bảo Đẹp Trai")
                    v.Text = string.gsub(v.Text, "BảoMod Hub", "Bảo Đẹp Trai Hub")
                    v.Text = string.gsub(v.Text, "BảoMod", "Bảo Đẹp Trai")
                end
            end
        end
    end
end)

-- BƯỚC 3: Tải trực tiếp script gốc từ máy chủ chuẩn của RealKid Hub
loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()