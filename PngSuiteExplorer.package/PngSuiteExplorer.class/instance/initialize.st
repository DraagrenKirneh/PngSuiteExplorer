initialization
initialize

	super initialize.
	
	infoDict := self pngInfo.
	morphDict := (self class cachedData 
		associationsSelect: [ :assoc | infoDict includesKey: assoc key ])
		collect: [ :data |
		[ (PNGReadWriter formFromStream: (RWBinaryOrTextStream with: data)) asMorph ] 
			on: Error 
			do: [ :error | error description asMorph ] 
	].

	description := '' asMorph.
	item := self placeholderItemMorph
