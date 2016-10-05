#!/bin/bash
WORDFILE=/var/pokemons.txt
# seed random from pid
RANDOM=$$;
# using cat means wc outputs only a number, not number followed by filename
lines=$(cat $WORDFILE  | wc -l);
rnum=$((RANDOM*RANDOM%$lines+1));
echo $(sed -n "$rnum p" $WORDFILE;), I Choose You!
cat  /var/pokemon/$((rnum + 1)).txt
echo
