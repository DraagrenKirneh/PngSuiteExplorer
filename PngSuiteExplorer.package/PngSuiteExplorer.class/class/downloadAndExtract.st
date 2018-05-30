as yet unclassified
downloadAndExtract

	| response archive dct |
	
	response := ZnEasy get: 'http://www.schaik.com/pngsuite2011/PngSuite-2017jul19.zip'.
	archive := ZipArchive new 
		readFrom: response contents readStream;
		yourself.
	
	dct := Dictionary new.
	
	archive members select: [ :m | 
		m isDirectory not and: [ m fileName endsWith: '.png' ] 
	] thenDo: [ :m | 
		dct at: (m fileName copyUpToLast: $.) put: m contents asByteArray
	].

	^ dct
	
	

