
#!/bin/sh

name="var_replace"
value=""


# 有值
echo "\${var+msg}: ${name+'word'} <=> echo $name"
echo "\${var-msg}: ${name-'word'} <=> echo $name"
echo "\${var=msg}: ${name='word'} <=> echo $name"
echo "\${var?msg}: ${name?'word'} <=> echo $name"

echo "\${var:+msg}: ${name:+'word'} <=> echo $name"
echo "\${var:-msg}: ${name:-'word'} <=> echo $name"
echo "\${var:=msg}: ${name:='word'} <=> echo $name"
echo "\${var:?msg}: ${name:?'word'} <=> echo $name"

# 无值
echo "\${var+msg}: ${value+'word'} <=> echo $value"
echo "\${var-msg}: ${value-'word'} <=> echo $value"
echo "\${var=msg}: ${value='word'} <=> echo $value"
echo "\${var?msg}: ${value?'word'} <=> echo $value"

echo "\${var:+msg}: ${value:+'word'} <=> echo $value"
echo "\${var:-msg}: ${value:-'word'} <=> echo $value"
echo "\${var:=msg}: ${value:='word'} <=> echo $value"
echo "\${var:?msg}: ${value:?'word'} <=> echo $value"

# 无定义
echo "\${var+msg}: ${rep+'word'} <=> echo $rep"
echo "\${var-msg}: ${rep-'word'} <=> echo $rep"
echo "\${var=msg}: ${rep='word'} <=> echo $rep"
echo "\${var?msg}: ${rep?'word'} <=> echo $rep"

echo "\${var:+msg}: ${rep:+'word'} <=> echo $rep"
echo "\${var:-msg}: ${rep:-'word'} <=> echo $rep"
echo "\${var:=msg}: ${rep:='word'} <=> echo $rep"
echo "\${var:?msg}: ${rep:?'word'} <=> echo $rep"

