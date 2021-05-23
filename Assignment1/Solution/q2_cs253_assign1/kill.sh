#!/bin/bash
ps -ef | grep "/bin/bash ./script" | awk '{print $2}' > var.txt
sed -i '$ d' var.txt
PID11=$(sed -n 1p var.txt)
PID12=$(sed -n 2p var.txt)
PID13=$(sed -n 3p var.txt)
PID21=$(ps -ef | grep "timeout" | grep $PID11 | awk '{print $2}')
PID22=$(ps -ef | grep "timeout" | grep $PID12 | awk '{print $2}')
PID23=$(ps -ef | grep "timeout" | grep $PID13 | awk '{print $2}')
ps -ef | grep "bash" | grep $PID21 | awk '{print $2}' > var1.txt
ps -ef | grep "bash" | grep $PID22 | awk '{print $2}' > var2.txt
ps -ef | grep "bash" | grep $PID23 | awk '{print $2}' > var3.txt
PID31=$(sed -n 2p var1.txt)
PID32=$(sed -n 2p var2.txt)
PID33=$(sed -n 2p var3.txt)
PID41=$(ps -ef | grep "sleep" | grep $PID31 | awk '{print $2}')
PID42=$(ps -ef | grep "sleep" | grep $PID32 | awk '{print $2}')
PID43=$(ps -ef | grep "sleep" | grep $PID33 | awk '{print $2}')
kill -9 $PID41 $PID42 $PID43 $PID31 $PID32 $PID33 $PID21 $PID22 $PID23 $PID11 $PID12 $PID13
rm var.txt
rm var1.txt
rm var2.txt
rm var3.txt
echo "KILLED!"
