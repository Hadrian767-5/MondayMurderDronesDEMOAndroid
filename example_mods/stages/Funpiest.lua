local currentDirectory = 'stages/Funpiest/'

function onCreatePost()
	makeLuaSprite('Fondo',currentDirectory..'Fondo',0,0)
	addLuaSprite('Fondo')

	makeLuaSprite('Casa',currentDirectory..'Casa',950,700)
	addLuaSprite('Casa')
end