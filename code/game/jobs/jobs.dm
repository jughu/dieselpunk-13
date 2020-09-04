var/const/ENGINEERING       =(1<<0)
var/const/SECURITY        	=(1<<1)
var/const/MEDICAL           =(1<<2)
var/const/SCIENCE           =(1<<3)
var/const/CIVILIAN          =(1<<4)
var/const/COMMAND           =(1<<5)
var/const/MISC              =(1<<6)
var/const/SERVICE           =(1<<7)
var/const/NSS	            =(1<<8)
var/const/CHURCH           	=(1<<9)
var/const/PROSPECTORS		=(1<<10)

var/const/ENGSEC			=(1<<0)

var/const/PREMIER			=(1<<0)
var/const/SMC				=(1<<1)
var/const/SUPSEC			=(1<<2)
var/const/INSPECTOR			=(1<<3)
var/const/TROOPER			=(1<<4)
var/const/MEDSPEC			=(1<<5)
var/const/GUILDMASTER		=(1<<6)
var/const/ADEPT				=(1<<7)
var/const/AI				=(1<<8)
var/const/CYBORG			=(1<<9)
var/const/SWO				=(1<<10)
var/const/OFFICER			=(1<<11)
var/const/SERG				=(1<<12)
var/const/SCOUT				=(1<<13)


var/const/MEDSCI			=(1<<1)

var/const/CRO				=(1<<0)
var/const/SCIENTIST			=(1<<1)
var/const/ORDERLY			=(1<<2)
var/const/CBO				=(1<<3)
var/const/DOCTOR			=(1<<4)
var/const/PSYCHIATRIST		=(1<<5)
var/const/ROBOTICIST		=(1<<6)
var/const/PARAMEDIC			=(1<<7)


var/const/STEWARD			=(1<<0)
var/const/CLUBMANAGER		=(1<<1)
var/const/CLUBWORKER		=(1<<2)
var/const/MERCHANT			=(1<<3)
var/const/CARGOTECH			=(1<<4)
var/const/MINER				=(1<<5)
var/const/ACTOR				=(1<<6)
var/const/ASSISTANT			=(1<<7)
var/const/JANITOR			=(1<<8)
var/const/BOTANIST			=(1<<9)
var/const/FOREMAN			=(1<<10)
var/const/SALVAGER			=(1<<11)
var/const/PROSPECTOR		=(1<<12)
var/const/MANAGER			=(1<<13)


var/const/CONFESSOR			=(1<<0)
var/const/BROKNIGHT			=(1<<1)
var/const/CHAPLAIN			=(1<<2)
var/const/BROSARGE			=(1<<3)
var/const/BROCORP			=(1<<4)

var/list/assistant_occupations = list()


var/list/command_positions = list(JOBS_COMMAND)


var/list/engineering_positions = list(JOBS_ENGINEERING)


var/list/medical_positions = list(JOBS_MEDICAL)


var/list/science_positions = list(JOBS_SCIENCE)

//BS12 EDIT
var/list/cargo_positions = list(JOBS_CARGO)


var/list/church_positions = list(JOBS_CHURCH)


var/list/civilian_positions = list(JOBS_CIVILIAN)


var/list/security_positions = list(JOBS_SECURITY)


var/list/nonhuman_positions = list(JOBS_NONHUMAN)


/proc/guest_jobbans(var/job)
	return ((job in command_positions) || (job in nonhuman_positions) || (job in security_positions))
