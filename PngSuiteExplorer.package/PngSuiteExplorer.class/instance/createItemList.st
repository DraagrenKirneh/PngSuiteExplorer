widgets
createItemList

	^ FTEasyListMorph new
		elements: infoDict keys sort;
		vResizing: #spaceFill;
		hResizing: #rigid;
		width: 100;
		beSingleSelection;
		icon: [ :_ | 
			Morph new 
				color: Color transparent; 
				extent: 16 asPoint; 
				yourself 
		];
		onAnnouncement: FTSelectionChanged do: [ :ann | 
			| selections key |
			selections := ann newSelectedRowIndexes.
			key := selections size = 1 
				ifTrue: [ ann fastTable dataSource elementAt: selections anyOne ] 
				ifFalse: [ nil ].
				
			self presentItemAt: key.
		];
		yourself