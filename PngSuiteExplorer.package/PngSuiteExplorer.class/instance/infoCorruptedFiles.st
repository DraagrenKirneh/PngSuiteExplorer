detail information
infoCorruptedFiles

	<pngInfo>
	
	^ { 
			'xs1n0g01' -> 'signature byte 1 MSBit reset to zero'.
     		'xs2n0g01' -> 'signature byte 2 is a Q'.
     		'xs4n0g01' -> 'signature byte 4 lowercase'.
     		'xs7n0g01' -> '7th byte a space instead of control-Z'.
     		'xcrn0g04' -> 'added cr bytes'.
     		'xlfn0g04' -> 'added lf bytes'.
     		'xhdn0g08' -> 'incorrect IHDR checksum'.
     		'xc1n0g08' -> 'color type 1'.
     		'xc9n2c08' -> 'color type 9'.
     		'xd0n2c08' -> 'bit-depth 0'.
     		'xd3n2c08' -> 'bit-depth 3'.
     		'xd9n2c08' -> 'bit-depth 99'. 
     		'xdtn0g01' -> 'missing IDAT chunk'. 
     		'xcsn0g01' -> 'incorrect IDAT checksum'.	
	 }