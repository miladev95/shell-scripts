inputNumber=$1
inputString=$2
file='./plate.txt'

if [[ ($1 == -h)]];then
  echo "USAGE : ./plate-finder.sh 61 ج"
fi
while read line
do
	pelakNumber=$(echo $line | cut -f1 -d-)
	pelakString=$(echo $line | cut -f2 -d-)
	if [ -z "$inputString"  ];then
		if [[ ( $pelakNumber == $inputNumber ) ]];then
			echo $line
		fi
	else
		if [[ ( $pelakNumber ==  $inputNumber && $pelakString == $inputString  )  ]];then
			echo $line
		fi
	fi
done < $file
