formatting
formatMapping: aString

	"used to create info* methods"
	| lines |
	
	lines := aString lines 
		collect: [ :each | each trimmed ]
		thenSelect: [ :each | each notEmpty ].
		
	^ String streamContents: [ :ss |
		ss 
			tab; << '<pngInfo>'; cr; cr;
			tab; << '^ {'; cr.
			
		lines 
			collect: [ :each | ' - ' split: each ]
			thenDo: [ :pair | 
				ss tab: 2; store: pair first; << ' -> '; store: pair second; << '.'; cr.	
			].
		ss tab; << '}'; cr
	].