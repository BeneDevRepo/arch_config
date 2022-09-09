#!/bin/bash
cd dot
for file in `find .`; do
	[ -f "$file" ] || continue	# ignore directories
	file=${file:2}			# strip ./
	mkdir -p `dirname ~/$file`	# ensure the dotfile directory actually exists
	ln -s -f ~/arch_config/dot/$file ~/$file	# force-create symlink
done
