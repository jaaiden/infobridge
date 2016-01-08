//local modules = InfoBridge.Config.Modules

hook.Add('PlayerDisconnected', 'IB_TrackPlaytimeOnDisconnect', function(ply)

  if InfoBridge.Config.Modules.playtime then
    PostWebData(ply:SteamID(), 'playtime', ply:TimeConnected())
  end

  if InfoBridge.Config.Modules.ipaddress then
    PostWebData(ply:SteamID(), 'ipaddress', ply:IPAddress())
  end

  if InfoBridge.Config.Modules.health then
    PostWebData(ply:SteamID(), 'health', ply:Health())
  end
end)

print('[InfoBridge] Modules loaded.')