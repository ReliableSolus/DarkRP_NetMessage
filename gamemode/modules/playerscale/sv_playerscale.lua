local minHull = Vector(-16, -16, 0)

local function setScale(ply, scale)
    ply:SetModelScale(scale, 0)

    ply:SetHull(minHull, Vector(16, 16, 72 * scale))
    net.Start("darkrp_playerscale")
        net.WriteEntity(ply)
        net.WriteFloat(scale)
    net.Broadcast()
end

local function onLoadout(ply)
    local Team = ply:Team()
    if not RPExtraTeams[Team] or not tonumber(RPExtraTeams[Team].modelScale) then
        setScale(ply, 1)
        return
    end

    local modelScale = tonumber(RPExtraTeams[Team].modelScale)

    setScale(ply, modelScale)
end
hook.Add("PlayerLoadout", "playerScale", onLoadout)
