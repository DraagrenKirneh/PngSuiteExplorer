widgets
createBrowser

	| root |

	root := AlignmentMorph newRow
		color: Color transparent; 
		addMorphBack: self createItemList;
		addMorphBack: self createItemView;
		yourself.
		
	^ root