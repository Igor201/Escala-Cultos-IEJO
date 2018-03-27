	local cultos = {culto1, culto2}

	cultos.culto1= { -- if 'key' use it for 'id' in the table row
						{ key = "Row1", text = "- Abertura:", value = "1", isCategory = false },
						{ key = "Row2", text = "Rose", value = "2", isCategory = false },
						{ key = "Row3", text = "- Louvor:", value = "3", isCategory = false },
						{ key = "Row4", text = "Louvor Sede", value = "4", isCategory = false },
						{ key = "Row5", text = "- Dança:", value = "3", isCategory = false },
						{ key = "Row6", text = "Ministério Kadosh Kids", value = "4", isCategory = false },
						{ key = "Row7", text = "- Palavra:", value = "5", isCategory = false },
						{ key = "Row8", text = "Pastor Marcos Gomes", value = "6", isCategory = false }
 						}

 	cultos.culto2= { -- if 'key' use it for 'id' in the table row
						{ key = "Row1", text = "- Abertura:", value = "1", isCategory = false },
						{ key = "Row2", text = "Missionária Vandinha", value = "2", isCategory = false },
						{ key = "Row3", text = "- Louvor:", value = "3", isCategory = false },
						{ key = "Row4", text = "Louvor Sede", value = "4", isCategory = false },
						{ key = "Row5", text = "- Dança:", value = "3", isCategory = false },
						{ key = "Row6", text = "Ministério Kadosh", value = "4", isCategory = false },
						{ key = "Row7", text = "GUG", value = "5", isCategory = false },
						{ key = "Row7", text = "Kadosh Kids", value = "5", isCategory = false },
						{ key = "Row7", text = "Shekinah", value = "5", isCategory = false },
						{ key = "Row8", text = "- Palavra:", value = "6", isCategory = false },
						{ key = "Row9", text = "Pastora Alice Helma", value = "7", isCategory = false }
 						}


function cultos:ordena( id )
		
		if id == 1 then

			return self.culto1

		end 

		if id == 2 then

			return self.culto2
		end 

end
		 
return cultos