private
imageMorphFor: data

	| form morph |
	
	form := (PNGReadWriter formFromStream: data readStream).
	morph := AlphaImageMorph withForm: form.
	morph 
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layout: #center.
		
	^ morph