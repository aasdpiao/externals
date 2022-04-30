local source = {}

function source_msg(sc)
    if not sc then
        return "nil"
    end
    return source[sc].desc
end

local function add(sou)
    assert(source[sou.code] == nil, string.format("have the same error code[%x], msg[%s]", sou.code, sou.message))
    source[sou.code] = {desc = sou.desc , type = sou.type}
    return sou.code
end

SOURCE_CODE = {
    no_source            = add{code = 0x0000, desc = "未标记来源"},
}

return source