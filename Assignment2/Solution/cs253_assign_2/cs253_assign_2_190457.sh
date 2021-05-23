#!/bin/bash
printf "State, District, Confirmed_Cases, Recovery_Rate\n" >> processed_Covid_Data_190457.csv
count_states=$(jq  'map(.) | del(.[33]) | length'  covid_Data.json);
for(( i=0; i<count_states; i++ )); do
state_name=$(jq  'del(.TT) | keys | .['$i']'  covid_Data.json);
count_districts=$(jq  'map(.) | del(.[33]) | .['$i'] | .districts | length'  covid_Data.json);
maximum_confirmed=$(jq '[map(.) | del(.[33]) | .['$i'] | .districts | map(.) | .[] | .total.confirmed] | max' covid_Data.json); 
max_rec_rate=0;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
if (( $maximum_confirmed >= 5000 )); then
for(( k=0; k<count_districts; k++)); do
district_name=$(jq  'map(.) | del(.[33]) | .['$i'] | .districts | keys | .['$k']'  covid_Data.json);
name_without_quotes=$district_name;
name_without_quotes="${name_without_quotes%\"}";
name_without_quotes="${name_without_quotes#\"}";
if [[ $name_without_quotes != "Unknown" ]]; then
recovered=$(jq 'map(.) | del(.[33]) | .['$i'] | .districts | map(.) | .['$k'] | .total | .recovered'  covid_Data.json); 
confirmed=$(jq 'map(.) | del(.[33]) | .['$i'] | .districts | map(.) | .['$k'] | .total | .confirmed'  covid_Data.json);
if (( $confirmed >= 5000 )); then
recovery_rate=$(echo "scale=2;$recovered*100/$confirmed" | bc);
check=$(echo "$recovery_rate >= $max_rec_rate" | bc); 
if (( $check )); then 
max_rec_rate=$recovery_rate; 
max_district=$district_name;
confirmed_cases=$confirmed;
fi;
fi;
fi;
done;
if [[ $max_rec_rate != 0 ]]; then
echo "$state_name, $max_district, $confirmed_cases, $max_rec_rate";
printf "$state_name, $max_district, $confirmed_cases, $max_rec_rate\n" >> processed_Covid_Data_190457.csv;
fi;
fi;
done;
