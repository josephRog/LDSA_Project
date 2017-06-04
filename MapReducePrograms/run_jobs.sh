#!/bin/bash
#default tests Run this script with the command nohup ./run_jobs.sh &>> output_test.txt &
hdfs dfs -rm -r /tempo-by-year-default
hdfs dfs -rm -r /duration-by-year-default
hdfs dfs -rm -r /hot-artist-by-year-default
hdfs dfs -rm -r /hot-time-sign-by-year-default
echo "========================================================="
echo "Starting Tempo by Year with default 162MB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTempoYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTempoYear.py" -input "/input/default/" -output "/tempo-by-year-default" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Duration by Year with default 162MB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapDurationYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redDurationYear.py" -input "/input/default/" -output "/duration-by-year-default" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Hot Artist by Year with default 162MB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapMostHotArtistYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redMostHotArtistYear.py" -input "/input/default/" -output "/hot-artist-by-year-default" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Time Sign by Year with default 162MB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTimeSignYearHot.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTimeSignYearHot.py" -input "/input/default/" -output "/hot-time-sign-by-year-default" #>/dev/null 2>&1


#small_1GB tests
hdfs dfs -rm -r /tempo-by-year-small_1GB
hdfs dfs -rm -r /duration-by-year-small_1GB
hdfs dfs -rm -r /hot-artist-by-year-small_1GB
hdfs dfs -rm -r /hot-time-sign-by-year-small_1GB
echo "========================================================="
echo "Starting Tempo by Year with small_1GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTempoYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTempoYear.py" -input "/input/small_1GB/" -output "/tempo-by-year-small_1GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Duration by Year with small_1GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapDurationYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redDurationYear.py" -input "/input/small_1GB/" -output "/duration-by-year-small_1GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Hot Artist by Year with small_1GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapMostHotArtistYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redMostHotArtistYear.py" -input "/input/small_1GB/" -output "/hot-artist-by-year-small_1GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Time Sign by Year with small_1GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTimeSignYearHot.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTimeSignYearHot.py" -input "/input/small_1GB/" -output "/hot-time-sign-by-year-small_1GB" #>/dev/null 2>&1


#medium_10GB tests
hdfs dfs -rm -r /tempo-by-year-medium_10GB
hdfs dfs -rm -r /duration-by-year-medium_10GB
hdfs dfs -rm -r /hot-artist-by-year-medium_10GB
hdfs dfs -rm -r /hot-time-sign-by-year-medium_10GB
echo "========================================================="
echo "Starting Tempo by Year with medium_10GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTempoYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTempoYear.py" -input "/input/medium_10GB/" -output "/tempo-by-year-medium_10GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Duration by Year with medium_10GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapDurationYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redDurationYear.py" -input "/input/medium_10GB/" -output "/duration-by-year-medium_10GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Hot Artist by Year with medium_10GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapMostHotArtistYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redMostHotArtistYear.py" -input "/input/medium_10GB/" -output "/hot-artist-by-year-medium_10GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Time Sign by Year with medium_10GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTimeSignYearHot.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTimeSignYearHot.py" -input "/input/medium_10GB/" -output "/hot-time-sign-by-year-medium_10GB" #>/dev/null 2>&1


#large_25GB tests
hdfs dfs -rm -r /tempo-by-year-large_25GB
hdfs dfs -rm -r /duration-by-year-large_25GB
hdfs dfs -rm -r /hot-artist-by-year-large_25GB
hdfs dfs -rm -r /hot-time-sign-by-year-large_25GB
echo "========================================================="
echo "Starting Tempo by Year with large_25GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTempoYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTempoYear.py" -input "/input/large_25GB/" -output "/tempo-by-year-large_25GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Duration by Year with large_25GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapDurationYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redDurationYear.py" -input "/input/large_25GB/" -output "/duration-by-year-large_25GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Hot Artist by Year with large_25GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapMostHotArtistYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redMostHotArtistYear.py" -input "/input/large_25GB/" -output "/hot-artist-by-year-large_25GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Time Sign by Year with large_25GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTimeSignYearHot.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTimeSignYearHot.py" -input "/input/large_25GB/" -output "/hot-time-sign-by-year-large_25GB" #>/dev/null 2>&1


#xlarge_50GB tests
hdfs dfs -rm -r /tempo-by-year-xlarge_50GB
hdfs dfs -rm -r /duration-by-year-xlarge_50GB
hdfs dfs -rm -r /hot-artist-by-year-xlarge_50GB
hdfs dfs -rm -r /hot-time-sign-by-year-xlarge_50GB
echo "========================================================="
echo "Starting Tempo by Year with xlarge_50GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTempoYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTempoYear.py" -input "/input/xlarge_50GB/" -output "/tempo-by-year-xlarge_50GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Duration by Year with xlarge_50GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapDurationYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redDurationYear.py" -input "/input/xlarge_50GB/" -output "/duration-by-year-xlarge_50GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Hot Artist by Year with xlarge_50GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapMostHotArtistYear.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redMostHotArtistYear.py" -input "/input/xlarge_50GB/" -output "/hot-artist-by-year-xlarge_50GB" #>/dev/null 2>&1
printf "\n"
printf "\n"
echo "========================================================="
echo "Starting Time Sign by Year with xlarge_50GB size."
echo "========================================================="
time hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -mapper "python /mnt/volume/LDSA_Project/MapReducePrograms/mapTimeSignYearHot.py" -reducer "python /mnt/volume/LDSA_Project/MapReducePrograms/redTimeSignYearHot.py" -input "/input/xlarge_50GB/" -output "/hot-time-sign-by-year-xlarge_50GB" #>/dev/null 2>&1

