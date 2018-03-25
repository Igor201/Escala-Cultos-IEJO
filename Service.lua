local Culto = require("Culto")
local Evento = require("Evento")

local Service = {cultos = {}}

function Service:new()
    local s = setmetatable(s, {__index = Service})
    s = getCultos();
    return s
end

--Culto = {data = nil, eventos = {}}
--Evento = {hora = nil, datalhe = nil}

local function getCultos()
    return {
        Culto:new('25-01-2018', {
            Evento:new('19:15', 'Evento 1'), 
            Evento:new('20:15', 'Evento 2')
        }),
        Culto:new('28-01-2018', {
            Evento:new('19:15', 'Evento 1'), 
            Evento:new('20:15', 'Evento 2'),
            Evento:new('21:15', 'Evento 3'), 
            Evento:new('23:15', 'Evento 4') 
        }),
        Culto:new('21-02-2018', {
            Evento:new('19:15', 'Evento 1'), 
            Evento:new('20:15', 'Evento 2'),
            Evento:new('21:15', 'Evento 3'), 
            Evento:new('22:15', 'Evento 4'),
            Evento:new('23:15', 'Evento 5'), 
            Evento:new('00:15', 'Evento 6'),
            Evento:new('1:15', 'Evento 7'), 
            Evento:new('2:15', 'Evento 8')
        }),
        Culto:new('28-03-2018', {
            Evento:new('19:15', 'Evento 1'), 
            Evento:new('20:15', 'Evento 2')
        }),
        Culto:new('29-05-2018', {
            Evento:new('19:15', 'Evento 1'), 
            Evento:new('20:15', 'Evento 2')
        }),
        Culto:new('31-04-2018', {
            Evento:new('19:15', 'Evento 1'), 
            Evento:new('20:15', 'Evento 2')
        }),
        Culto:new('28-04-2018', {
            Evento:new('19:15', 'Evento 1'), 
            Evento:new('20:15', 'Evento 2')
        })
    }
end

return Service