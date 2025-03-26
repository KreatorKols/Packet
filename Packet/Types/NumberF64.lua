--!strict

-- Requires
local Cursor = require(script.Parent.Parent.Cursor)

return {

	Read = function(cursor: Cursor.Cursor)
		return cursor:ReadF8()
	end,

	Write = function(cursor: Cursor.Cursor, value: number)
		cursor:Allocate(8)
		cursor:WriteF8(value)
	end,

}