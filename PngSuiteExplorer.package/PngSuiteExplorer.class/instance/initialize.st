initialization
initialize

	super initialize.
	
	infoDict := self pngInfo.
	morphDict := (self class cachedData 
		associationsSelect: [ :assoc | infoDict includesKey: assoc key ])
		collect: [ :data |
		[ self imageMorphFor: data ] 
			on: Error 
			do: [ :error | error description asMorph ] 
	].

	description := '' asMorph.
	item := self placeholderItemMorph
