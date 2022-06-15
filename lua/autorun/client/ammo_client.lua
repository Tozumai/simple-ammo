net.Receive("AmmoNotify", function()

	local Text = net.ReadString()

	chat.AddText( Color(15, 95, 185), LocalPlayer():Nick(), Color( 225, 225, 225 ), " - "..Text ) 

end)