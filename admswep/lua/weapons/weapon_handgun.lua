SWEP.PrintName			= "Handgun" -- This will be shown in the spawn menu, and in the weapon selection menu
SWEP.Author			= "theendresult2" -- These two options will be shown when you have the weapon highlighted in the weapon selection menu
SWEP.Instructions		= "LMB to fire."

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo		= "pistol"

SWEP.Secondary.ClipSize		= 2
SWEP.Secondary.DefaultClip	= 2
SWEP.Secondary.Automatic	= true
SWEP.Secondary.Ammo		= "pistol"

SWEP.Weight			= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Slot			= 1
SWEP.SlotPos			= 2
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= true

SWEP.ViewModel			= "models/weapons/v_357.mdl"
SWEP.WorldModel			= "models/weapons/w_pistol.mdl"

SWEP.ShootSound = Sound( "Metal.SawbladeStick" )

-- Called when the left mouse button is pressed
function SWEP:PrimaryAttack()

self:EmitSound("Weapon_357.Single")
self:ShootBullet(50, 1, 0.03)	


self:SetNextPrimaryFire( CurTime() + 0.3 )

	
end

function SWEP:SecondaryAttack()

	
end


