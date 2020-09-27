
#!/bin/sh

name="var_replace"
value=""

# ${var+msg}
echo "\${var+msg}"
# 有值
echo ${name+"word"}
echo $name
# 无值
echo ${value+"word"}
echo $value
# 无变量
echo ${rep+"word"}
echo $rep
echo .

:<<!
# ${var-msg}
echo "\${var-msg}"
# 有值
echo ${name-"word"}
echo $name
# 无值
echo ${value-"word"}
echo $value
# 无变量
echo ${rep-"word"}
echo $rep
echo .

# ${var=msg}
echo "\${var=msg}"
echo ${name="word"}
echo $name
echo $value
echo ${value="word"}
echo ${rep="word"}
echo $rep
echo .

# ${var?msg}
name="var_replace"
value=""
echo "\${var?msg}"
echo ${name?"var exist"}
echo $name
echo ${value?"var exist"}
echo $value
echo ${rep?"var not exist"}
echo $rep
echo .
#!

# ${var:+msg}
echo "\${var:+msg}"
echo ${name:+"word"}
echo $name
echo ${value:+"word"}
echo $value
echo ${rep:+"word"}
echo $rep
echo .

#:<<!
# ${var:-msg}
echo "\${var:-msg}"
echo ${name:-"word"}
echo $name
echo ${value:-"word"}
echo $value
echo ${rep:-"word"}
echo $rep
echo .

# ${var:=msg}
echo "\${var:=msg}"
echo ${name:="word"}
echo $name
echo $value
echo ${value:="word"}
echo ${rep:="word"}
echo $rep
echo .

# ${var:?msg}
name="var_replace"
value=""
echo "\${var:?msg}"
echo ${name:?"var exist"}
echo $name
echo ${value:?"var exist"}
echo $value
echo ${repl:?"var not exist"}
echo $repl
echo .
!


