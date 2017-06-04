#!/usr/bin/python3

from operator import itemgetter
import sys


hotness = 0.0
year = None
Artist = None
n = 90
dictlist = [dict() for x in range(n)]


# input comes from STDIN
for line in sys.stdin:
	# remove leading and trailing whitespace
	line = line.strip()
	# parse the input we got from mapper.py
	values = line.split('\n')
	values = values[0].split('\t')
	(year, Artist, hotness) = values
	year = int(year)
	hotness = float(hotness)
	if year > 0:
		current_dict = dictlist[year-1922]
		if Artist in current_dict.keys():
			current_dict[Artist] += hotness
		else:
			current_dict[Artist] = hotness
i=0
for dict in dictlist:
	maxHotnessYear = 0
	hotArtist = None
	if len(dict.keys()):
		for key in dict:
			if dict[key] > maxHotnessYear:
				maxHotnessYear = dict[key]
				hotArtist = key
				
		print i+1922, hotArtist, maxHotnessYear

			#max(dict, key=dict.get, value=dict.get))
	i += 1
#print(dictlist[88])
