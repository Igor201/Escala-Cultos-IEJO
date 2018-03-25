local Culto = {data = nil, eventos = {}}

function Culto:new( data, eventos )
    local c = setmetatable(culto, {__index = Culto})
    return c
end

function Culto:getData()
    return self.data
end

function Culto:getEventos()
    return self.eventos
end

return Culto