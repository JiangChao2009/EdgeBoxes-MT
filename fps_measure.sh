THREADS=$1
PRED=1
GEN=1

while [ "$PRED" -le "$THREADS" ]
do
  GEN=$((PRED*1))
  python3 main.py $GEN $PRED n
  python3 main.py $GEN $PRED n

  GEN=$((PRED*2))
  python3 main.py $GEN $PRED n
  python3 main.py $GEN $PRED n

  GEN=$((PRED*3))
  python3 main.py $GEN $PRED n
  python3 main.py $GEN $PRED n

  PRED=$((PRED+1))

done
