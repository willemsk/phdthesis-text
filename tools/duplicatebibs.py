"""Find duplicate BibTex entries.

This small script finds duplicate "@artcicle" entries in a given BibTex file.

Example:
		To find duplicate entries in 'papers.bib' simply run:

				$ python duplicatebibs.py papers.bib
		
		Which will output something like this if you have duplicates:
				$                 Galenkamp-2018: 2
    		$               VanMeervelt-2017: 2
    		$                     Wloka-2017: 2
    		$       Willems-VanMeervelt-2017: 2
		Or if you have no duplicates:
				$ No duplicate entries found!

	@author Khalil Muhammad (https://github.com/micaleel)
	@author Kherim Willems (https://github.com/willemsk)

"""

import sys
import os
from collections import Counter
from pprint import pprint


def extract_id(line):
	x = line.index('{')
	y = line.index(',')
	return line[x+1: y].strip()


def main():
	filepath = sys.argv[1]
	assert os.path.exists(filepath)

	with open(filepath, 'r') as fp:
		lines = [extract_id(line) for line in fp.readlines() 
		if (line.startswith('@article') or line.startswith('@Article'))]

	counts = Counter(lines)
	for k,v in counts.items():
		if v > 1:
			print('{:>35}: {}'.format(k, v))
		else:
			print('No duplicate entries found!')

if __name__ == '__main__':
	main()