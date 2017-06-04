#!/usr/bin/python3

from operator import itemgetter
import sys

current_year = None
current_hotness  = 0.0
hotness = 0.0
#total_count = 0
year = None
current_Artist = None
Artist = None
count = 1
mostHotVal = 0.0
mostHotArtist = None

# input comes from STDIN
for line in sys.stdin:
        # remove leading and trailing whitespace
        line = line.strip()
        #total_count += 1
        # parse the input we got from mapper.py
        #(year, dancability), count = line.split('\t', 1)
        values = line.split('\n')
        values = values[0].split('\t')
        #print(values)
        (year, Artist, hotness) = values
        # convert count (currently a string) to int     
        try:
                hotness = float(hotness)
        except ValueError:
                # count was not a number, so silently
                # ignore/discard this line
                continue

                # this IF-switch only works because Hadoop sorts map output
                # by key (here: word) before it is passed to the reducer
        if current_year == year:
                if current_Artist == Artist:
                        current_hotness += hotness
                        count += 1
                else:
                        current_Artist = Artist
                        current_hotness = hotness
                        count = 1
        else:
                #if current_year:
                # write result to STDOUT
                if (current_hotness/count > mostHotVal):
                        mostHotVal = current_hotness/count
                        mostHotArtist = current_Artist
                        print ('%s\t%s\t%s' % (current_year, current_Artist, current_hotness))
                else:
                        mostHotVal = 0.0
                        mostHotArtist = None
                current_year = year
                current_Artist = Artist
                current_hotness = hotness

if current_year == year:
        if current_Artist == Artist:
                print ('%s\t%s\t%s' % (current_year, current_Artist, current_hotness))
