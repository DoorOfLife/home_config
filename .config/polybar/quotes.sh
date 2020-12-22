ROOT="$HOME/.config/polybar"
#echo $ROOT
LINECNT=`wc -l "$ROOT/quotes.txt" | cut -d ' ' -f1`
#echo $LINECNT
LINENUM=$(( ( RANDOM % $LINECNT )  + 1 ))
#echo $LINENUM
OUT=`sed "${LINENUM} q;d" $ROOT/quotes.txt`
echo $OUT 
