as yet unclassified
cachedData 

	^ CachedData ifNil: [ CachedData := self downloadAndExtract ]