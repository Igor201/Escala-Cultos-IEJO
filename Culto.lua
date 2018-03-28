local Culto = {data = nil, eventos = {}}

function Culto:new( data, eventos )
    local c = {}
    local c = setmetatable(c, {__index = Culto})
    c.data = data
    c.eventos = eventos
    return c
end

function Culto:getData()
    return self.data
end

function Culto:getEventos()
    return self.eventos
end

return Culto