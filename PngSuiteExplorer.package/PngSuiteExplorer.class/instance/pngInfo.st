private
pngInfo

	| dct |
	
	dct := Dictionary new.
	(Pragma allNamed: #pngInfo in: self class) do: [ :each |
		(self perform: each methodSelector) do: [ :assoc | 
			dct add: assoc 
		]
	].

	^ dct