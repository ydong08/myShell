
#!/bin/bash

name="aaaaabcd1234abcd1234efgh5678"
echo ${#name}

echo ${name:4}
echo ${name:4:4}

echo "----"
#: <<eof
echo ${name##a}
echo ${name#abcd}
echo ${name##abcd}
echo ${name%efgh}
echo ${name%%efgh}
#eof

echo "----"
echo ${name#*a}
echo ${name##*a}

echo "----"
echo ${name%h*}
echo ${name%%h*}

