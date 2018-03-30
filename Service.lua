local Culto = require("Culto")
local Evento = require("Evento")
local json = require("json")

local Service = {cultos = {}}

function Service:novoService()

    local ser = {}

    setmetatable(ser, {__index = Service})

    self.cultos = Service.getCultos()

    return ser

end

--Culto = {data = nil, eventos = {}}
--Evento = {hora = nil, datalhe = nil}

function Service.getCultos()
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
        }),
        Culto:new('30-04-2018', {
            Evento:new('20:15', 'Evento 1'), 
            Evento:new('21:15', 'Evento 2')
        })
    }
end

function Service:linhaTableView()
    local linha = {}

    for k,v in pairs(self.cultos) do
       table.insert( linha, k, { key = "Row" .. k, text = v.data, value = k, isCategory = false } )
    end
    
    return linha
end

function Service:getCulto(id)
    return self[id];
end

function Service.listaEventosDoCulto(id)
    local lista = {}    

    local culto = Service[id]

    -- for k,v in pairs(self[id].eventos) do
    --     table.insert( lista, k, { key = "Row" .. k, text = v.descricao, value = k, isCategory = false } )
    --  end

     print(json.encode(culto))

    return lista
end

return Service