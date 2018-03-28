local Evento = {hora = nil, datalhe = nil}

function Evento:new(hora, detalhe)
    local e = {}
    local e = setmetatable(e, {__index = Evento})
    e.hora = hora
    e.data = detalhe
    return e
end

function Evento:getHora()
    return self.hora 
end

function Evento:getDetalhe()
    return self.detalhe 
end

return Evento