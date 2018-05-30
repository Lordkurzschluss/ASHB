AddCSLuaFile( "scripthookpwnd.lua" ) 
print( "            
     /\    / ____| |  | |  _ \ 
    /  \  | (___ | |__| | |_) |
   / /\ \  \___ \|  __  |  _ < 
  / ____ \ ____) | |  | | |_) |
 /_/    \_\_____/|_|  |_|____/ 
 ", "ASHB initialised, you are protected.")                              
                               


util.AddNetworkString( "__scripthookdetect" )
net.Receive( "__scripthookdetect", function( len, ply )
    if ply != NULL then
        if ULib then
            ULib.addBan( ply:SteamID(), 0, "Scripthook", ply:Nick(), NULL )
        else
            ply:Ban( 0, true, "Scripthook" )
        end
    end
end )
