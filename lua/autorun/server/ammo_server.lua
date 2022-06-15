util.AddNetworkString("AmmoNotify")

hook.Add("PlayerSpawn", "AmmoCheck", function( ply, transition )

	local AmmoAmount = 1000
	ply:GiveAmmo( AmmoAmount, "AR2", true)

	net.Start("AmmoNotify")
	net.WriteString("You've been given " + AmmoAmount + " ammo")
	net.Send( ply )

end)