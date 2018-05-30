widgets
createButtonRow 

	| row |
	
	row := AlignmentMorph newRow
		color: Color transparent;
		cellInset: 4; 
		listCentering: #center;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		yourself.
	
	{ #center . #scaled . #tiled . #scaledAspect } collect: [ :each |
		SimpleButtonMorph new 
			target: self;
			label: each asString;
			actionSelector: #updateImageLayout:;
			arguments: { each };
			themeChanged;
			yourself				
	] thenDo: [ :each |
		row addMorphBack: each	
	].
	
	^ row
