SWEP.PrintName			= "Xtra Shotty" -- This will be shown in the spawn menu, and in the weapon selection menu
SWEP.Author			= "theendresult2" -- These two options will be shown when you have the weapon highlighted in the weapon selection menu
SWEP.Instructions		= "LMB to fire a single, strong shot, RMB to fire automatically."

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= false
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

SWEP.ViewModel			= "models/weapons/v_shotgun.mdl"
SWEP.WorldModel			= "models/weapons/w_pistol.mdl"

SWEP.ShootSound = Sound( "Metal.SawbladeStick" )

-- Called when the left mouse button is pressed
function SWEP:PrimaryAttack()

self:EmitSound("Weapon_Shotgun.Single")
self:ShootBullet(30, 1, 0.1)	

	
end

function SWEP:SecondaryAttack()

self:EmitSound("Airboat_Gun.Energy1")
self:ShootBullet(1, 1, 0.05)	

self:SetNextPrimaryFire( CurTime() + 0.2 )
	
end


