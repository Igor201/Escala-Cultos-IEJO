local Evento = {hora = nil, datalhe = nil}

function Evento:new(hora, data)
    local e = setmetatable(e, {__index = Evento})
    return e
end

function Evento:getHora()
    return self.hora 
end

function Evento:getDetalhe()
    return self.detalhe 
end