----------------------------------------
--       Welcome to InfoBridge!       --
----------------------------------------
--   Please fill out the following    --
--   details to add your server to    --
-- InfoBridge. If you need to create  --
--    an account, please do so at     --
--   https://infobridge.xyz/register  --
----------------------------------------

InfoBridge = {}
InfoBridge.Config = {}

InfoBridge.Config.InfoKey = ""
// This is your account's InfoKey. You can get it here: https://infobridge.xyz/account/key
// The InfoKey is used to connect all of your servers together.

InfoBridge.Config.ServerID = "myserver"
// This is a unique identifier for your server. Please make this different than your other
// servers. It will be shown in your logs and other unspecified areas on the web client.
// Please keep this as an alphanumeric entry (only letters and numbers).

InfoBridge.Config.Modules = {}
// Modules are the fields that InfoBridge will track on this server.
// You can view all of the available modules at https://infobridge.xyz/help/modules

InfoBridge.Config.Modules["playtime"]      = true // Track the user's playtime?
InfoBridge.Config.Modules["ipaddress"]     = true // Track the user's IP Address?
InfoBridge.Config.Modules["health"]        = true // Track the user's health?

print('[InfoBridge] Config loaded.')