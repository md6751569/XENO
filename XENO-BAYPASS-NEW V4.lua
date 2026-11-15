local X, I, E

-- ===== KEY + EXPIRY SYSTEM =====
local LICENSE_KEY = "XENO-999"

-- Expiry date is Base64-encoded (obfuscation only, not encryption).
local EXPIRY_B64 = "MjAyNi0xMS0xNg=="

local function base64Decode(data)
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local lookup = {}
    for i = 1, #chars do
        lookup[chars:sub(i, i)] = i - 1
    end

    local result = {}
    local buffer, bits = 0, 0

    for i = 1, #data do
        local c = data:sub(i, i)
        if c ~= "=" then
            local value = lookup[c]
            if value == nil then
                return nil
            end

            buffer = buffer * 64 + value
            bits = bits + 6

            if bits >= 8 then
                bits = bits - 8
                local byte = math.floor(buffer / (2 ^ bits)) % 256
                result[#result + 1] = string.char(byte)
                buffer = buffer % (2 ^ bits)
            end
        end
    end

    return table.concat(result)
end

local EXPIRY_DATE = base64Decode(EXPIRY_B64)

local function dateNumber()
    local t = os.date("*t")
    return t.year * 10000 + t.month * 100 + t.day
end

local function parseDate(s)
    if type(s) ~= "string" then return nil end
    local y, m, d = s:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    if not y then return nil end
    return tonumber(y) * 10000 + tonumber(m) * 100 + tonumber(d)
end

local function checkLicense()
    local expiry = parseDate(EXPIRY_DATE)
    if not expiry then
        gg.alert("Invalid expiry configuration!")
        os.exit()
    end

    if dateNumber() > expiry then
        gg.alert("⏳ Key Expired!\nExpiry: " .. EXPIRY_DATE)
        os.exit()
    end

    local input = gg.prompt({"🔑 KEY XENO"}, {""}, {"text"})
    if not input or not input[1] then
        os.exit()
    end

    if input[1] ~= LICENSE_KEY then
        gg.alert("❌ Invalid Key!")
        os.exit()
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
