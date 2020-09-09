#!/bin/bash

set -o pipefail -e
export PRELAUNCH_OUT="/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/prelaunch.out"
exec >"${PRELAUNCH_OUT}"
export PRELAUNCH_ERR="/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/prelaunch.err"
exec 2>"${PRELAUNCH_ERR}"
echo "Setting up env variables"
export JAVA_HOME=${JAVA_HOME:-"/usr/lib/jvm/java-8-openjdk-amd64"}
export HADOOP_COMMON_HOME=${HADOOP_COMMON_HOME:-"/usr/local/hadoop"}
export HADOOP_HDFS_HOME=${HADOOP_HDFS_HOME:-"/usr/local/hadoop"}
export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-"/usr/local/hadoop/etc/hadoop"}
export HADOOP_YARN_HOME=${HADOOP_YARN_HOME:-"/usr/local/hadoop"}
export HADOOP_HOME=${HADOOP_HOME:-"/usr/local/hadoop"}
export PATH=${PATH:-"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"}
export LANG=${LANG:-"en_IN"}
export HADOOP_TOKEN_FILE_LOCATION="/tmp/hadoop-hadoopusr/nm-local-dir/usercache/hadoopusr/appcache/application_1599630780005_0015/container_1599630780005_0015_01_000008/container_tokens"
export CONTAINER_ID="container_1599630780005_0015_01_000008"
export NM_PORT="41899"
export NM_HOST="vaishvik-Modern-15-A10RAS"
export NM_HTTP_PORT="8042"
export LOCAL_DIRS="/tmp/hadoop-hadoopusr/nm-local-dir/usercache/hadoopusr/appcache/application_1599630780005_0015"
export LOCAL_USER_DIRS="/tmp/hadoop-hadoopusr/nm-local-dir/usercache/hadoopusr/"
export LOG_DIRS="/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008"
export USER="hadoopusr"
export LOGNAME="hadoopusr"
export HOME="/home/"
export PWD="/tmp/hadoop-hadoopusr/nm-local-dir/usercache/hadoopusr/appcache/application_1599630780005_0015/container_1599630780005_0015_01_000008"
export JVM_PID="$$"
export MALLOC_ARENA_MAX="4"
export NM_AUX_SERVICE_mapreduce_shuffle="AAA0+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
export STDOUT_LOGFILE_ENV="/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/stdout"
export SHELL="/bin/bash"
export HADOOP_ROOT_LOGGER="INFO,console"
export HADOOP_MAPRED_HOME="${HADOOP_HOME}"
export CLASSPATH="$PWD:$HADOOP_CONF_DIR:$HADOOP_COMMON_HOME/share/hadoop/common/*:$HADOOP_COMMON_HOME/share/hadoop/common/lib/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/lib/*:$HADOOP_YARN_HOME/share/hadoop/yarn/*:$HADOOP_YARN_HOME/share/hadoop/yarn/lib/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*:job.jar/*:job.jar/classes/:job.jar/lib/*:$PWD/*"
export LD_LIBRARY_PATH="$PWD:$HADOOP_COMMON_HOME/lib/native"
export STDERR_LOGFILE_ENV="/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/stderr"
export HADOOP_CLIENT_OPTS=""
echo "Setting up job resources"
ln -sf -- "/tmp/hadoop-hadoopusr/nm-local-dir/usercache/hadoopusr/appcache/application_1599630780005_0015/filecache/13/job.xml" "job.xml"
ln -sf -- "/tmp/hadoop-hadoopusr/nm-local-dir/usercache/hadoopusr/appcache/application_1599630780005_0015/filecache/11/job.jar" "job.jar"
echo "Copying debugging information"
# Creating copy of launch script
cp "launch_container.sh" "/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/launch_container.sh"
chmod 640 "/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/launch_container.sh"
# Determining directory contents
echo "ls -l:" 1>"/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/directory.info"
ls -l 1>>"/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/directory.info"
echo "find -L . -maxdepth 5 -ls:" 1>>"/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/directory.info"
find -L . -maxdepth 5 -ls 1>>"/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/directory.info"
echo "broken symlinks(find -L . -maxdepth 5 -type l -ls):" 1>>"/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/directory.info"
find -L . -maxdepth 5 -type l -ls 1>>"/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/directory.info"
echo "Launching container"
exec /bin/bash -c "$JAVA_HOME/bin/java -Djava.net.preferIPv4Stack=true -Dhadoop.metrics.log.level=WARN   -Xmx820m -Djava.io.tmpdir=$PWD/tmp -Dlog4j.configuration=container-log4j.properties -Dyarn.app.container.log.dir=/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008 -Dyarn.app.container.log.filesize=0 -Dhadoop.root.logger=INFO,CLA -Dhadoop.root.logfile=syslog org.apache.hadoop.mapred.YarnChild 127.0.1.1 35231 attempt_1599630780005_0015_m_000006_0 8 1>/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/stdout 2>/usr/local/hadoop/logs/userlogs/application_1599630780005_0015/container_1599630780005_0015_01_000008/stderr "
