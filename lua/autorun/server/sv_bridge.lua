function GetWebData(steamid, mod)
  local returnData = ""
  http.Fetch('https://infobridge.xyz/get/' .. InfoBridge.Config.InfoKey .. '/' .. InfoBridge.Config.ServerID .. '/' .. mod .. '/' .. steamid,
    function(body, len, headers, code)
      returnData = body
    end,
    
    function(err)

    end
  )

  return util.JSONToTable(returnData)
end

function PostWebData(steamid, mod, val)
  local success = false
  local postData = {}
  postData["steamid"] = steamid
  postData["module"] = mod
  postData["value"] = val

  http.Post('https://infobridge.xyz/post', postData,
    function(body, lens, headers, code)
      if code >= 400 then
        success = true
      end
    end, function(errorCode) end)

  return success
end

print('[InfoBridge] Bridge loaded.')