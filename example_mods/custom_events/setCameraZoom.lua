function onEvent(name,value1,value2)
	if name == 'setCameraZoom' then
		setProperty('defaultCamZoom',value1);
	end
end