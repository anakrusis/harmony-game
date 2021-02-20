-- just a 2d table of tables wrapper, maybe will store more info later...
ChordShape = {
	name = "",
	xoffsets = {},
	yoffsets = {},
}

function ChordShape:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

-- Registry of all the chord shapes

CHORD_MAJOR = ChordShape:new{ xoffsets = { 0, 0, 1 }, yoffsets = { 0, 1, 0 } , name="maj" }; 
CHORD_MINOR = ChordShape:new{ xoffsets = { 0, 1, 1 }, yoffsets = { 0, -1, 0 }, name="min"}; 
CHORD_SUS4  = ChordShape:new{ xoffsets = { 0, -1, 1 }, yoffsets = { 0, 0, 0 }, name="sus4"}; 
CHORD_AUG   = ChordShape:new{ xoffsets = { 0, 0, 0 }, yoffsets = { 0, 1, -1 }, name="aug"}; 