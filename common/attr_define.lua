local defines = {}

local function add(key)
	assert(defines[key.code] == nil, string.format("have the same key code[%x], msg[%s]", key.code, key.alias))
	errors[key.code] = {alias = key.alias }
	return key.code
end

ITEM_KEYS = {
	EXPIRE                = add{code = 0x0001, alias = "过期时间"},
}

ROLE_KEYS = {
	EXPIRE                = add{code = 0x1001, alias = "过期时间"},
}

EQUIP_KEYS = {
	EXPIRE                = add{code = 0x2001, alias = "过期时间"},
}

GUIDE_KEYS = {
	GUIDE_001                = add{code = 0x3001, alias = "引导1"},
	GUIDE_002                = add{code = 0x3002, alias = "引导2"},
}

return defines