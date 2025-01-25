
function KillPortals()
{
    local portal = Entities.FindByClassname(null, "prop_portal");
	local scope = null;
	while (portal != null) 
    {
        if (portal.GetName() == "") 
        {
			portal.ValidateScriptScope();
			scope = portal.GetScriptScope();
            //EntFireByHandle(portal, "Fizzle", "", 0.00, null, null);
			EntFireByHandle(portal, "Kill", "", 0.50, null, null);
        }
        portal = Entities.FindByClassname(portal, "prop_portal");
    }
}
