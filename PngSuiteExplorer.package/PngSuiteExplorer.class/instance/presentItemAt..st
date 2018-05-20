updating
presentItemAt: aKey
	
	| newDescription newItem |
	
	newDescription := infoDict at: aKey ifAbsent: [ '' ].
	newItem := morphDict at: aKey ifAbsent: [ self placeholderItemMorph ].
	 
	self 
		updateDescription: newDescription;
		updateItem: newItem