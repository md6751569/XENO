local X, I, E

-- ===== KEY + EXPIRY SYSTEM =====
local LICENSE_KEY = "XENO-999"
local EXPIRY_DATE = "2026-11-16" -- YYYY-MM-DD

local function dateNumber()
    local y, m, d = os.date("*t").year, os.date("*t").month, os.date("*t").day
    return y * 10000 + m * 100 + d
end

local function parseDate(s)
    local y, m, d = s:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    if not y then return nil end
    return tonumber(y) * 10000 + tonumber(m) * 100 + tonumber(d)
end

local function checkLicense()
    local expiry = parseDate(EXPIRY_DATE)
    if not expiry then
        gg.alert("EXPIRY-BAYPASS TELEGRAM DM @xenokamrul❌")
        os.exit()
    end

    if dateNumber() > expiry then
        gg.alert("⏳ Key Expired!\nExpiry: " .. EXPIRY_DATE)
        os.exit()
    end

local input = gg.prompt({"🔑 KEY XENO \n"}, {""}, {"text"})
if not input then
    gg.exit()
end


    gg.toast(" PAZZ W8 BAYPASS ACTIVE ✅: " .. EXPIRY_DATE)
end

checkLicense()
-- ===== END KEY + EXPIRY SYSTEM =====

local function M()
A = gg.choice({
"📱 XENO-BAYPASS ACTIVE CILK-HERE ✅ ",
"ℹ️ LUS INFO",
"🚪 @xeno-baypasa-off 🔄"
}, nil, ' ADMIN : @fmkamrul1 ')
if A == nil then else
if A == 1 then X() end
if A == 2 then I() end
if A == 3 then E() end
end
PANDA = -1
end
X = function()
gg.toast("⚡ XENO-BAYPASS-LOGING...")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.getTargetInfo()
gg.getRangesList("/data/app/~~S4GfLVgoqgVqYlsM-1CuDg==/com.waxmoon.ma.gp-9KDSfIUzw8toQqE9t4Km5A==/lib/arm64/libil2cpp.so")
gg.toast("🎉 XENO-BAYPASS-ACTIVE  🚀")
gg.setVisible(false)
gg.sleep(500)
end
I = function()
gg.alert(" SCRIPT  32B DEVELOPER @xenokamrul JI\n⚡ ARMv7 / ARM32 VERSION\n🔥 V1 ,  Version")
end
E = function()
gg.toast("👋 Exit Done")
os.exit()
end
while true do
if gg.isVisible(true) then
PANDA = 1
gg.setVisible(false)
end
gg.clearResults()
if PANDA == 1 then M() end
end
