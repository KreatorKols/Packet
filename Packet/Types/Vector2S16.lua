--!strict

-- Requires
local Cursor = require(script.Parent.Parent.Cursor)

return {
	
	Read = function(cursor: Cursor.Cursor)
		return Vector2.new(cursor:ReadS2(), cursor:ReadS2())
	end,
	
	Write = function(cursor: Cursor.Cursor, value: Vector2)
		cursor:Allocate(6)
		cursor:WriteS2(value.X + 0.5)
		cursor:WriteS2(value.Y + 0.5)
	end,
	
}