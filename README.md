hadoop configuration

o run hadoop in local :
$su - hadoopusr
$ start-all.sh  // to start all
$ stop-all.sh // to stop aa
$ jps // to see all running

If datanode is not running , then clear current from hadoop_tmp/hdfs/datanode/current file from there.

See output on localhost:8088 and localhost:9870. (UI based output)

hadoopusr@vaishvik-Modern-15-A10RAS:/usr/local/hadoop/bin$ ./yarn jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.1.jar pi 16 1000
Run this from hadoop/bin folder to run pi estimate example of yarn application in your local PC.

Some links :
https://hadoop.apache.org/docs/stable/hadoop-project-dist/hadoop-common/SingleCluster.html
https://www.informit.com/articles/article.aspx?p=2190194&seqNum=3
https://www.youtube.com/watch?v=beD69aAYCY4&ab_channel=OnlineLearningCenter
http://cloudyrathor.com/hadoop-installation-configuration/ (edited) 
