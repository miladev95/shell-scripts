stdin=$1
file='./abbreviation.txt'
if [ $# -lt 1 ];then
	echo "Usage: ./$(basename "$0") www" 
	exit 1
fi
while read line
do
	string=$(echo $line | cut -f1 -d=) #! cut first section with = delimeter
	temp=$(echo -n "${string//[[:space:]]/}") #! remove spaces
	if [[ ( $stdin == $temp ) ]];then
		echo $line
	fi
done < $file
