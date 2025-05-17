local currentDirectory = 'stages/The shuttle/'

function onCreatePost()
	makeLuaSprite('Fondo',currentDirectory..'Fondo',0,0)
	addLuaSprite('Fondo')

	makeLuaSprite('Piso_nieve',currentDirectory..'Piso_nieve',0,1600)
	addLuaSprite('Piso_nieve')

	makeLuaSprite('Nave',currentDirectory..'Nave',200,700)
	addLuaSprite('Nave')

	makeLuaSprite('Luz',currentDirectory..'Luz',800,800)
	addLuaSprite('Luz',true)

	makeLuaSprite('Frente',currentDirectory..'Frente',0,2400)
	addLuaSprite('Frente',true)

	if shadersEnabled then
		makeLuaSprite('snow','',1050,1000)
		makeGraphic('snow',1,1,'0xFFFFFFFF')
		setGraphicSize('snow',4800,4800)
		addLuaSprite('snow',true)

		initLuaShader('snow')
		setSpriteShader('snow', 'snow')
	end
end

local time = 0
function onUpdate(elapsed)
	time = time + elapsed;
	setShaderFloat('snow','iTime',time)
end