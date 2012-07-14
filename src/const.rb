PM_VERSION = "2.0.3"
PM_WEBSITE = "https://github.com/jlnr/petermorphose"
PM_WEBSITE_DESC = "GitHub project"

# New constants

TILES_X = 24
TILES_Y = 1024
TILE_SIZE = 24
SCRIPT_TIMERS = 11

# Distilled with some regexps from PMConst.pas

# SPIELSTATUSKONSTANTEN
STATE_WELCOME = 0
STATE_MAIN_MENU = 1
STATE_OPTIONS = 5
STATE_OPTIONS_2 = 6
STATE_LEVEL_SELECTION = 10
STATE_GAME = 100
STATE_DEAD = 101
STATE_WON = 102
STATE_WON_INFO = 103
STATE_PAUSED = 104
STATE_READ_ME_1 = 200
STATE_READ_ME_2 = 201
STATE_READ_ME_3 = 202
STATE_READ_ME_4 = 203
STATE_READ_ME_5 = 204
STATE_READ_ME_6 = 205
STATE_READ_ME_7 = 206
STATE_READ_ME_8 = 207
STATE_CREDITS = 220

# BILDER
IMAGE_SKY = 0
IMAGE_PLAYER = 1
IMAGE_ENEMIES = 2
IMAGE_STUFF = 3
IMAGE_EFFECTS = 4
IMAGE_DANGER = 5
IMAGE_TILES = 6
IMAGE_GUI = 7

# GERÄUSCHE
SOUND_WOOSH = 0
SOUND_WOOSH_BACK = 1

SOUND_PLAYER_ARG = 0
SOUND_JUMP = 1
SOUND_ARG = 2
SOUND_ARG_2 = 3
SOUND_DEATH = 4
SOUND_HELP = 5
SOUND_HELP_2 = 6
SOUND_JEEPEE = 7
SOUND_STAR_COLLECT = 8
SOUND_HEALTH_COLLECT = 9
SOUND_POINT_COLLECT = 10
SOUND_AMMO_COLLECT = 11
SOUND_FREEZE_COLLECT = 12
SOUND_KEY_COLLECT = 13
SOUND_MORPH = 14
SOUND_EAT = 15
SOUND_SLIME = 16
SOUND_SLIME_2 = 17
SOUND_SLIME_3 = 18
SOUND_DOOR = 19
SOUND_DOOR_2 = 20
SOUND_STAIRS = 21
SOUND_STAIRS_RND = 22
SOUND_BREAK = 23
SOUND_BREAK_2 = 24
SOUND_WATER = 25
SOUND_WATER_2 = 26
SOUND_LAVA = 27
SOUND_SHSHSH = 28
SOUND_EXPLOSION = 29
SOUND_TURBO = 30
SOUND_LEVER = 31
SOUND_SWORD_WOOSH = 32
SOUND_BLOCKER_BREAK = 33
SOUND_BOW = 34
SOUND_ARROW_HIT = 35

# ACTIONS FÜR ID_PLAYER - ID_LIVING_MAX
ACT_NUM = 20
ACT_STAND = 0
ACT_WALK_1 = 1
ACT_WALK_2 = 2
ACT_WALK_3 = 3
ACT_WALK_4 = 4
ACT_JUMP = 5
ACT_LAND = 6
ACT_IMPACT_1 = 7
ACT_IMPACT_2 = 8
ACT_IMPACT_3 = 9
ACT_IMPACT_4 = 10
ACT_IMPACT_5 = 11
ACT_ACTION_1 = 12
ACT_ACTION_2 = 13
ACT_ACTION_3 = 14
ACT_ACTION_4 = 15
ACT_ACTION_5 = 16
ACT_PAIN_1 = 17
ACT_PAIN_2 = 18
ACT_DEAD = 19
ACT_INV_UP = 20
ACT_INV_DOWN = 21

# RICHTUNGEN
DIR_LEFT = 0
DIR_RIGHT = 1
DIR_UP = 2
DIR_DOWN = 3

class Numeric
  def dir_to_vx
    self == DIR_LEFT ? -1 : +1
  end
  
  def other_dir
    self == DIR_LEFT ? DIR_RIGHT : DIR_LEFT
  end
end

# SPEZIALKARTENTEILE
# MASSIV, ERSTE REIHE
TILE_ROCKET_UP = 0xC_0
TILE_ROCKET_UP_LEFT = 0xC_1
TILE_ROCKET_UP_RIGHT = 0xC_2
TILE_ROCKET_UP_2 = 0xC_3
TILE_ROCKET_UP_LEFT_2 = 0xC_4
TILE_ROCKET_UP_RIGHT_2 = 0xC_5
TILE_ROCKET_UP_3 = 0xC_6
TILE_MORPH_FIGHTER = 0xC_7
TILE_MORPH_GUN = 0xC_8
TILE_MORPH_BERSERKER = 0xC_9
TILE_MORPH_BOMB = 0xCA
TILE_MORPH_MAX = 0xCA
TILE_MORPH_EMPTY = 0xCB
TILE_CLOSED_DOOR = 0xCC
TILE_CLOSED_DOOR_2 = 0xCD
TILE_CLOSED_DOOR_3 = 0xCE
TILE_BIG_BLOCKER_3 = 0xCF
# MASSIV, ZWEITE REIHE
TILE_BLOCKER = 0xD_0
TILE_BLOCKER_2 = 0xD_1
TILE_BLOCKER_3 = 0xD_2
TILE_BIG_BLOCKER = 0xD_3
TILE_BIG_BLOCKER_2 = 0xD_4
TILE_ROCKET_UP_LEFT_3 = 0xD_5
TILE_ROCKET_UP_RIGHT_3 = 0xD_6
TILE_PULL_LEFT = 0xD_7
TILE_PULL_RIGHT = 0xD_8
TILE_SLIME = 0xD_9
TILE_SLIME_2 = 0xDA
TILE_SLIME_3 = 0xDB
TILE_BRIDGE = 0xDC
TILE_BRIDGE_2 = 0xDD
TILE_BRIDGE_3 = 0xDE
TILE_BRIDGE_4 = 0xDF
# HINTERGRUND, ERSTE REIHE
TILE_AIR_ROCKET_UP = 0xE_0
TILE_AIR_ROCKET_UP_LEFT = 0xE_1
TILE_AIR_ROCKET_UP_RIGHT = 0xE_2
TILE_AIR_ROCKET_LEFT = 0xE_3
TILE_AIR_ROCKET_RIGHT = 0xE_4
TILE_AIR_ROCKET_DOWN = 0xE_5
TILE_WATER_5 = 0xE_6
TILE_HOLE = 0xE_7
TILE_WATER = 0xE_8
TILE_WATER_2 = 0xE_9
TILE_WATER_3 = 0xEA
TILE_WATER_4 = 0xEB
TILE_OPEN_DOOR = 0xEC
TILE_OPEN_DOOR_2 = 0xED
TILE_OPEN_DOOR_3 = 0xEE
TILE_SPIKES = 0xEF
# HINTERGRUND, ZWEITE REIHE
TILE_BLOCKER_BROKEN = 0xF_0
TILE_BLOCKER_3_BROKEN = 0xF_1
TILE_BIG_BLOCKER_BROKEN = 0xF_2
TILE_SLOW_ROCKET_UP = 0xF_3
TILE_AIR_ROCKET_UP_2 = 0xF_4
TILE_AIR_ROCKET_UP_3 = 0xF_5
TILE_SPIKES_TOP = 0xF_6
TILE_HOLE_2 = 0xF_7
TILE_STAIRS_UP_LOCKED = 0xF_8
TILE_STAIRS_UP = 0xF_9
TILE_STAIRS_UP_2 = 0xFA
TILE_STAIRS_DOWN_LOCKED = 0xFB
TILE_STAIRS_DOWN = 0xFC
TILE_STAIRS_DOWN_2 = 0xFD
TILE_STAIRS_END = 0xFE
TILE_STAIRS_END_2 = 0xFF

# OBJEKT-IDS
# -1: OBJEKTEORGANISATION
ID_BREAK = -1

# 00 - 04 = SPIELER
ID_PLAYER = 0x00
ID_PLAYER_FIGHTER = 0x01
ID_PLAYER_GUN = 0x02
ID_PLAYER_BERSERKER = 0x03
ID_PLAYER_BOMBER = 0x04
ID_PLAYER_MAX = 0x04
# 05 - 09 = GEGNER
ID_ENEMY = 0x05
ID_ENEMY_FIGHTER = 0x06
ID_ENEMY_GUN = 0x07
ID_ENEMY_BERSERKER = 0x08
ID_ENEMY_BOMBER = 0x09
ID_ENEMY_MAX = 0x09
ID_LIVING_MAX = 0x09

# 10 - 1F ANDERE OBJEKTE
ID_OTHER_OBJECTS_MIN = 0x10
ID_FIREWALL_1 = 0x10
ID_FIREWALL_2 = 0x11
ID_FIRE = 0x12
ID_HELP_ARROW = 0x13
ID_FISH = 0x14
ID_FISH_2 = 0x15
ID_TRASH_IDLE = 0x16
ID_FUSING_BOMB = 0x17
ID_TRASH = 0x18
ID_TRASH_2 = 0x19
ID_TRASH_3 = 0x1A
ID_TRASH_4 = 0x1B
ID_LEVER_DOWN = 0x1C
ID_LEVER = 0x1D
ID_LEVER_LEFT = 0x1E
ID_LEVER_RIGHT = 0x1F
ID_OTHER_OBJECTS_MAX = 0x1F

# 20 - 2F = EINSAMMELBARE OBJEKTE
ID_COLLECTIBLE_MIN = 0x20
ID_KEY = 0x20
ID_HEALTH = 0x21
ID_HEALTH_2 = 0x22
ID_STAR = 0x23
ID_STAR_2 = 0x24
ID_STAR_3 = 0x25
ID_POINTS = 0x26
ID_POINTS_2 = 0x27
ID_POINTS_3 = 0x28
ID_POINTS_4 = 0x29
ID_POINTS_5 = 0x2A
ID_POINTS_6 = 0x2B
ID_POINTS_MAX = 0x2B
ID_CAROLIN = 0x2C
ID_SPEED = 0x2D
ID_JUMP = 0x2E
ID_FLY = 0x2F

# 30 - 3F = ANDERE EINSAMMELBARE OBJEKTE
ID_MORE_TIME_2 = 0x30
ID_EDIBLE_FISH = 0x31
ID_EDIBLE_FISH_2 = 0x32
ID_MORE_TIME = 0x33
ID_SEAMINE = 0x34
ID_COOKIE = 0x35
ID_SLOW_DOWN = 0x36
ID_CRYSTAL = 0x37 
ID_MORPH_FIGHTER = 0x38
ID_MORPH_GUN = 0x39
ID_MORPH_BOMBER = 0x3A
ID_MORPH_GRENADIER = 0x3B
ID_MORPH_MAX = 0x3B
ID_MUNITION_MIN = 0x3C
ID_MUNITION_GUN = 0x3C
ID_MUNITION_GUN_2 = 0x3D
ID_MUNITION_BOMBER = 0x3E
ID_MUNITION_BOMBER_2 = 0x3F
ID_MUNITION_MAX = 0x3F
ID_COLLECTIBLE_MAX = 0x3F

# 40 - 4F = EFFEKTE
ID_FX_MIN = 0x40
ID_FX_SMOKE = 0x40
ID_FX_FLAME = 0x41
ID_FX_SPARK = 0x42
ID_FX_BUBBLE = 0x43
ID_FX_RICOCHET = 0x44
ID_FX_LINE = 0x45
ID_FX_BLOCKER_PARTS = 0x46
ID_FX_BREAK = 0x47
ID_FX_BREAK_2 = 0x48
ID_FX_BREAKING_PARTS = 0x49
ID_FX_BLOOD = 0x4A
ID_FX_FIRE = 0x4B
ID_FX_FLYING_CAROLIN = 0x4C
ID_FX_FLYING_CHAIN = 0x4D
ID_FX_FLYING_BLOB = 0x4E
ID_FX_TEXT = 0x4F
ID_FX_SLOW_TEXT = 0x50
ID_FX_WATER_BUBBLE = 0x51
ID_FX_WATER = 0x52
ID_FX_SPARKLE = 0x53
ID_FX_MAX = 0x53

# MEHR IDS GIBT'S NICHT
ID_MAX = 0x53
