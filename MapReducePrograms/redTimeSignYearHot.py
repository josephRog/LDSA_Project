#!/usr/bin/python3

from operator import itemgetter
import sys


hotness = 0.0
year = None
TimeSign = None
n = 90
dictlist = [dict() for x in range(n)]


# input comes from STDIN
for line in sys.stdin:
	# remove leading and trailing whitespace
	line = line.strip()
	# parse the input we got from mapper.py
	values = line.split('\n')
	values = values[0].split('\t')
	(year, TimeSign, hotness) = values
	year = int(year)
	hotness = float(hotness)
	TimeSign = int(TimeSign)
	if year > 0:
		current_dict = dictlist[year-1922]
		if TimeSign in current_dict.keys():
			current_dict[TimeSign] += hotness
		else:
			current_dict[TimeSign] = hotness
i=0
for dict in dictlist:
	maxHotnessYear = 0
	hotTimeSign = 0
	if len(dict.keys()):
		for key in dict:
			if dict[key] > maxHotnessYear:
				maxHotnessYear = dict[key]
				hotTimeSign = key
				
		print i+1922, hotTimeSign, maxHotnessYear

			#max(dict, key=dict.get, value=dict.get))
	i += 1
#print(dictlist[88])
