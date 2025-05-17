function onEvent(name,value1,value2)
	if name == 'setBeatsPerZoom' then
		setProperty('beatsPerZoom',value1);
	end
end