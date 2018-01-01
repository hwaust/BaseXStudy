#!/bin/bash
# make the name of output file and remove existing one.
output=$(echo $1 | awk -F '/' '{print $2}').txt

# Retreive information of prefix Query
echo "Prefix query" > $output
echo "Tree\t\tParsing\t\tCompiling\tEvaluating\tPrinting\tTotal" | tee -a $output
for file in $1/*PRE*; do
    filename=$(echo $file | awk -F 'PRE_' '{print $2}' | awk -F '.' '{print $1}')
    grep Parsing -A 5 $file | \
	    awk 'BEGIN{FS=":";print  "T_'$filename'", "\t"} {print $2, "\t"} END{}'| \
	    sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' >> $output
done

# Retreive information of suffix query 
echo "Suffix query"  >> $output
echo "Tree&Fragment\tParsing\t\tCompiling\tEvaluating\tPrinting\tTotal" >> $output
for file in $1/*SUFFIX*; do
    filename=$(echo $file | awk -F 'SUFFIX_' '{print $2}' | awk -F '.' '{print $1}')
    cat $file | grep Parsing -A 5 | \
	    awk 'BEGIN{FS=":";print  "'$filename'", "\t"} {print $2, "\t"} END{}'| \
	    sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g'  >> $output
done

echo "Result has been saved to $output "

---------------------------- 1st version ------------------------
#!/bin/bash
# make the name of output file and remove existing one.
output=$(echo $1 | awk -F '/' '{print $2}').txt
rm $output

# Retreive information of prefix Query
echo "Prefix query" | tee -a $output
echo "Tree\t\tParsing\t\tCompiling\tEvaluating\tPrinting\tTotal" | tee -a $output
for file in $1/*PRE*; do
    filename=$(echo $file | awk -F 'PRE_' '{print $2}' | awk -F '.' '{print $1}')
    cat $file | grep Parsing -A 5 | \
	    awk 'BEGIN{FS=":";print  "T_'$filename'", "\t"} {print $2, "\t"} END{}'| \
	    sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' | tee -a $output
done

# Retreive information of suffix query 
echo "Suffix query" | tee -a $output
echo "Tree&Fragment\tParsing\t\tCompiling\tEvaluating\tPrinting\tTotal" | tee -a $output
for file in $1/*SUFFIX*; do
    filename=$(echo $file | awk -F 'SUFFIX_' '{print $2}' | awk -F '.' '{print $1}')
    cat $file | grep Parsing -A 5 | \
	    awk 'BEGIN{FS=":";print  "'$filename'", "\t"} {print $2, "\t"} END{}'| \
	    sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' | tee -a $output
done

echo "Result has been saved to $output "



