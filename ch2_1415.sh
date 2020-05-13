echo -n "enter one number and head n lines will be displayed: " 
read n 
head --lines=$n data/ch2/first_col.txt


echo -n "enter one number and tail n lines will be displayed: " 
read n
tail --lines=$n data/ch2/first_col.txt