local NetMessage = {
    "DRP_AddLaw",
    "DRP_RemoveLaw",
    "DRP_ResetLaws",
    "DrugEffects",
    "KillLetter",
    "ShowLetter",
    "KeysMenu",
    "anim_keys",
    "_DarkRP_CustomAnim",
    "OnChangedTeam",
    "blackScreen",
    "DarkRP_Credits",
    "FAdmin_AddPriv",
    "FAdmin_RemovePriv",
    "FAdmin_StopSounds",
    "FAdmin_SendMessage",
    "FAdmin_ConsoleMessage",
    "FAdmin_kick_start",
    "FAdmin_kick_cancel",
    "FAdmin_kick_update",
    "FAdmin_ban_start",
    "FAdmin_ban_cancel",
    "FAdmin_ban_update",
    "FPP_CheckBuddy",
    "FPP_Notify",
    "FPP_blockedlist",
    "FPP_ShareSettings",
    "GotArrested",
    "AdminTell",
    "_Notify",
    "AteFoodIcon",
    "DRPLogMsg",
    "darkrp_playerscale",
    "DoVote",
    "KillVoteVGUI",
    "DoQuestion",
    "KillQuestionVGUI",
}

local function LoadNetMessage()
    for k,v in pairs(NetMessage) do
        util.AddNetworkString(v)
    end
end
hook.Add("PostGamemodeLoaded", "LoadNetMessage", LoadNetMessage)
