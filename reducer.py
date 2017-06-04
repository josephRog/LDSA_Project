#!/usr/bin/python3

from operator import itemgetter
import sys

current_year = None
current_tempo  = 0.0
#total_count = 0
year = None
current_count = 1
tempo = 0

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
    (year, tempo), count = values, 1
    # convert count (currently a string) to int
    try:
        tempo = float(tempo)
        count = int(count)
    except ValueError:
        # count was not a number, so silently
        # ignore/discard this line
        continue

    # this IF-switch only works because Hadoop sorts map output
    # by key (here: word) before it is passed to the reducer
    if current_year == year:
#        print('hej')
        current_tempo += tempo
        #print(current_dancability)
        current_count += count
    else:
        if current_year:
            # write result to STDOUT
            print ('%s\t%s' % (current_year, current_tempo/current_count))

        #total_count += count
        current_count = count        
        current_year = year
        current_tempo = tempo

# do not forget to output the last word if needed!
if current_year == year:
        print ('%s\t%s' % (current_year, current_tempo/current_count))
#print total_count
