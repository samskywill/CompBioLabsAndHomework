#Answer to Lab 1

cut -f 2-4 -d, PredPreyData.csv > PredPreyDataCut.csv 

head -n 1 PredPreyDataCut.csv > PredPreyDataFinal1.csv

tail PredPreyDataCut.csv >> PredPreyDataFinal1.csv
