--!strict

-- Requires
local Cursor = require(script.Parent.Parent.Cursor)

return {

	Read = function(cursor: Cursor.Cursor)
		return cursor:ReadU2()
	end,

	Write = function(cursor: Cursor.Cursor, value: number)
		cursor:Allocate(2)
		cursor:WriteU2(value)
	end,

}