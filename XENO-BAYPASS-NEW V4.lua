-- ============================================================
--                    X E N O   P R E M I U M
--                  OFFICIAL PANEL  |  SERVER CHECK
-- ============================================================

-- BASE64 DECODER
local function B64Decode(data)
    local chars =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    local output = {}
    local buffer = 0
    local bits = 0

    for i = 1, #data do
        local c = data:sub(i, i)

        if c == "=" then
            break
        end

        local value = chars:find(c, 1, true)

        if value then
            buffer = buffer * 64 + value - 1
            bits = bits + 6

            if bits >= 8 then
                bits = bits - 8

                local byte =
                    math.floor(buffer / (2 ^ bits)) % 256

                output[#output + 1] = string.char(byte)
                buffer = buffer % (2 ^ bits)
            end
        end
    end

    return table.concat(output)
end

-- ==========================================
--             ENCODED SETTINGS
-- ==========================================

local SERVER_URL = B64Decode(
    "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL21kNjc1MTU2OS9YRU5PL3JlZnMvaGVhZHMvbWFpbi9zZXZlci50eHQ="
)

local MSG_CONNECTION = B64Decode(
    "U0VSVkVSIENPTk5FQ1RJT04gRkFJTEVEIQ=="
)

local ENABLED_STATUS = B64Decode("T04=")

-- ==========================================
--              SERVER CHECK
-- ==========================================

local function checkRemoteServer()

    local ok, response = pcall(function()
        return gg.makeRequest(SERVER_URL)
    end)

    if not ok or not response
        or tonumber(response.code) ~= 200 then

        gg.alert(
            "⚠️ XENO PANEL\n\n" ..
            "🔴 SERVER CONNECTION FAILED!\n\n" ..
            "📩 CONTACT: @xenokamrul"
        )

        os.exit()
        return false
    end

    local status = (response.content or "")
        :gsub("%s+", "")
        :upper()

    if status ~= ENABLED_STATUS then

        gg.alert([[
╔════════════════════════════╗
   ⚡ XENO-PANEL-OFC-P20-BYPASS ⚡
╚════════════════════════════╝

       🔴 SERVER OFFLINE

    ❌ SERVER IS CURRENTLY OFF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    🌐 STATUS: DISCONNECTED

    📩 CONTACT: @xenokamrul

━━━━━━━━━━━━━━━━━━━━━━━━━━━━

       ⚡ PLEASE TRY AGAIN LATER
]])

        os.exit()
        return false
    end

    return true
end

-- ==========================================
--             EXECUTE CHECK
-- ==========================================

if not checkRemoteServer() then
    os.exit()
end

-- ==========================================
--           SERVER CHECK END
-- ==========================================
-- Encoded configuration strings (Base64 is obfuscation, not encryption)
local function _decode64(data)
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local out, buffer, bits = {}, 0, 0
    for i = 1, #data do
        local c = data:sub(i, i)
        if c ~= "=" then
            local value = chars:find(c, 1, true)
            if value then
                buffer = buffer * 64 + value - 1
                bits = bits + 6
                if bits >= 8 then
                    bits = bits - 8
                    local byte = math.floor(buffer / (2 ^ bits)) % 256
                    out[#out + 1] = string.char(byte)
                    buffer = buffer % (2 ^ bits)
                end
            end
        end
    end
    return table.concat(out)
end

local X, I, E

-- ===== KEY + EXPIRY SYSTEM =====
local LICENSE_KEY = _decode64("WEVOTy05OTk=")
local EXPIRY_DATE = _decode64("MjA5MC0xMS0zMA==") -- YYYY-MM-DD

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

    local input = gg.prompt({"🔑 KEY XENO"}, {""}, {"text"})
    if not input or not input[1] then
        os.exit()
    end

    if input[1] ~= LICENSE_KEY then
        gg.alert("❌ Invalid Key!\nPlease enter a valid license key.")
        os.exit()
    end

    gg.toast(" PAZZ W8 BAYPASS ACTIVE ✅: " .. EXPIRY_DATE)
end

checkLicense()
-- ===== END KEY + EXPIRY SYSTEM =====

-- ============================================================
--                    X E N O   P R E M I U M
--                       MAIN CONTROL PANEL
-- ============================================================

local function M()
    A = gg.choice({
        "⚡XENO-P20-BYPASS PREMIUM ⚡",
        "🚀  ACTIVATE  |  👑 XENO-P20-BYPASS START ♻️   ",
        "👑  ABOUT    |  DEVELOPER INFO ☯️",
        "🚪  EXIT     |  CLOSE BYPASS",
        ""
    }, nil, [[
╔══════════════════════════════════╗
        👑  X E N O  P R E M I U M
          ⚡ OFFICIAL BYPASS ⚡
╠══════════════════════════════════╣
  🛡️  STATUS : SERVER VERIFIED
  👨‍💻  ADMIN  : @xenokamrul
╚══════════════════════════════════╝
]])
    if A == 2 then X() end
    if A == 3 then I() end
    if A == 4 then E() end
    PANDA = -1
end
X = function()
gg.toast("⚡ XENO PREMIUM  |  STARTING...")
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.getTargetInfo()
gg.getRangesList(_decode64("L2RhdGEvYXBwL35+UzRHZkxWZ29xZ1ZxWWxzTS0xQ3VEZz09L2NvbS53YXhtb29uLm1hLmdwLTlLRFNmSVV6dzh0b1FxRTl0NEttNUE9PS9saWIvYXJtNjQvbGliaWwyY3BwLnNv"))
gg.toast("🎉 XENO-P20-BYPASS ACTIVE  |  READY! 🚀")
gg.setVisible(false)
gg.sleep(500)
end
I = function()
gg.alert(" SCRIPT  32B DEVELOPER @xenokamrul ✅ \n⚡ ARMv7 / ARM32 VERSION\n🔥 V1 ,  Version")
end
E = function()
gg.toast("👋 XENO-P20-BYPASS |  THANK YOU!")
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
