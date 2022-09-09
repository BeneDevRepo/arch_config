#!/bin/bash
cd dot
for file in `find .`; do
	[ -f "$file" ] || continue # ignore directories
	file=${file:2} # strip ./
	#echo $file
	#echo ~/$file
	ln -s ~/arch_config/dot/$file ~/$file
done
