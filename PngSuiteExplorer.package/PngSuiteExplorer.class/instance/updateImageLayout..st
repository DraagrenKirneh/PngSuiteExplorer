updating
updateImageLayout: aSymbol

	item class == AlphaImageMorph ifTrue: [ 
		item layout: aSymbol 	
	]