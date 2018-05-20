widgets
createItemView
	
	|  centering |
	
	centering := AlignmentMorph newRow 
		color: Color gray;
		wrapCentering: #center;
		listCentering: #center;
		addMorph: item;
		yourself.
	
	^ AlignmentMorph newColumn 
		cellInset: 12; 
		color: Color transparent;
		addMorphBack: centering;
		addMorphBack: description;
		yourself