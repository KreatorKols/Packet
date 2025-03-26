--!strict

-- Requires
local Cursor = require(script.Parent.Parent.Cursor)

return {

	Read = function(cursor: Cursor.Cursor)
		return cursor:ReadU1()
	end,

	Write = function(cursor: Cursor.Cursor, value: number)
		cursor:Allocate(1)
		cursor:WriteU1(value)
	end,

}