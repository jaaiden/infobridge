include('autorun/server/sv_config.lua')
include('autorun/server/sv_bridge.lua')
include('autorun/server/sv_modules.lua')

function GetBridgeVersion()
  return "0.0.1"
end

function GetLatestVersion()
  local ver = "0.0.1"
  http.Fetch('https://infobridge.xyz/latestversion',
    function(body, len, headers, code)
      ver = body
    end

    function(err)
    end
  )

  return ver
end

function CheckVersion()
  if tonumber(GetBridgeVersion(),number base=10) < tonumber(GetLatestVersion(),number base=10) then
    print('[InfoBridge] There is a new update available to InfoBridge!')
    print('[InfoBridge] Go to https://infobridge.xyz/download to get it!')
  end
end

function ValidateConfig()
  local configData = {}
  configData["infokey"] = InfoBridge.Config.InfoKey

  http.Post('https://infobridge.xyz/validate',configData,function onSuccess=nil,function(err) print('[InfoBridge] Error validating this server: ' .. err) end)
end

-- hook.Add('InitPostEntity', 'IB_Startup', function()
  
-- end)

print('[InfoBridge] v' .. GetBridgeVersion() .. ' Loaded!')
CheckVersion()
ValidateConfig()