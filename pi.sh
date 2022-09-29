#!/bin/bash
sample=$1
count=0
pi=3.1415926535
for (( i=0; i<$sample; i++ ));
do
	x=$(bc -l <<< "scale=15; $RANDOM/32767")
	y=$(bc -l <<< "scale=15; $RANDOM/32767")
	x_square=$(bc -l <<< "$x*$x")
	y_square=$(bc -l <<< "$y*$y")
	distance=$(bc -l <<< "$x_square+$y_square")
	b=$(bc -l <<< "$distance < 1") 
	if [ $b == 1 ];
	then
		((++count))
	fi
done
N_o=$(($sample-$count)) 
a=$(bc -l <<< "$count/$sample") 
estimated_pi=$(bc -l <<< "$a*4")
middle=$(bc -l <<< "$estimated_pi - $pi")
e_rel=$(bc -l <<< "sqrt($middle*$middle)/$pi")
echo "N_samples: $sample N_i: $count N_o: $N_o pi_estimated: $estimated_pi e_rel: $e_rel"
