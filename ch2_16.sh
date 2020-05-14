echo -n "enter n number:  "
read n

count=`wc --line data/ch2/first_col.txt | cut --fields=1 --delimiter=" "`

unit=`expr $count / $n`
remainder=`expr $count % $n`
if [ $remainder -gt 0 ]; then
    unit=`expr $unit + 1`
fi

split --lines=$unit --numeric-suffixes=1 --additional-suffix=.txt data/ch2/first_col.txt data/ch2/split_test_

for i in `seq 1 $n`
do
    fname=`printf data/ch2/split_%02d.txt $i`
    fname_test=`printf data/ch2/split_test_%02d.txt $i`
    diff --report-identical-files $fname $fname_test
done